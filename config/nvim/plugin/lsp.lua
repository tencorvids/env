-- stylua: ignore start
-- LSP Config

-- Use Espressif clangd and discover system headers from the ESP cross-compilers.
vim.lsp.config("clangd", {
    cmd = {
        vim.fn.expand("~/.espressif/tools/esp-clang/esp-19.1.2_20250312/esp-clang/bin/clangd"),
        "--query-driver=" .. table.concat({
            vim.fn.expand("~/.espressif") .. "/tools/riscv32-esp-elf/esp-14.2.0_20241119/riscv32-esp-elf/bin/riscv32-esp-elf-*",
            vim.fn.expand("~/.espressif") .. "/tools/xtensa-esp-elf/esp-14.2.0_20241119/xtensa-esp-elf/bin/xtensa-esp*-elf-*",
        }, ","),
    },
})

-- Leave C/C++ to clangd so SourceKit does not emit host-toolchain diagnostics.
vim.lsp.config("sourcekit", {
    filetypes = { "swift", "objc", "objcpp" },
})

local servers = {
	"clangd",
	"gopls",
	"lua_ls",
    "emmet_language_server",
    "sourcekit",
    "tsc",
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
    css = { "oxfmt" },
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
