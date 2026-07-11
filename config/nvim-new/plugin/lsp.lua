-- LSP Config
local servers = {
	"clangd",
	"gopls",
	"lua_ls",
}

for _, server in pairs(servers) do
	vim.lsp.enable(server)
end

-- stylua: ignore start
vim.keymap.set("n", "<LEADER>rn", function() vim.lsp.buf.rename() end, { desc = "LSP rename" })
vim.keymap.set("n", "<LEADER>ca", function() vim.lsp.buf.code_action() end, { desc = "LSP code action" })
-- stylua: ignore end

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
