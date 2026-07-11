-- LSP Config
local servers = {
    "clangd",
    "gopls",
    "lua_ls"
}

for _, server in pairs(servers) do
    vim.lsp.enable(server)
end

-- Treesitter
local langs = {
    "bash",
    "c",
    "go",
    "lua"
}

require("nvim-treesitter").setup({
    ensure_installed = langs,
    sync_install = false,

    highlight = true,
    indent = true
})

-- Blink
require("blink.cmp").setup({})
