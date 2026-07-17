-- stylua: ignore start
-- LSP Config
local servers = {
	"clangd",
	"gopls",
	"lua_ls",
    "emmet_language_server",
    "ts_ls",
    "tailwindcss",
    "oxfmt",
    "oxlint"
}

for _, server in pairs(servers) do
	vim.lsp.enable(server)
end

vim.keymap.set("n", "<LEADER>rn", function() vim.lsp.buf.rename() end, { desc = "LSP rename" })
vim.keymap.set("n", "<LEADER>ca", function() vim.lsp.buf.code_action() end, { desc = "LSP code action" })

-- Treesitter
local langs = {
	"bash",
	"c",
	"go",
	"lua",
}

require("nvim-treesitter").setup({
	ensure_installed = langs,
	sync_install = false,

	highlight = true,
	indent = true,
})

-- Blink
require("blink.cmp").setup({
	keymap = { preset = "default" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})

-- Conform
local formatters = {
	lua = { "stylua" },
	go = { "gofmt" },
    javascript = { "oxfmt" },
    javascriptreact = { "oxfmt" },
    typescript = { "oxfmt" },
    typescriptreact = { "oxfmt" },
    json = { "oxfmt" },
}

require("conform").setup({
	notify_on_error = false,
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
		lsp_format = "fallback",
	},
	formatters_by_ft = formatters,
})
-- stylua: ignore end
