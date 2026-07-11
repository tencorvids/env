require("options")
require("keymaps")

-- Plugins
vim.pack.add({
    { src = "https://github.com/scottmckendry/cyberdream.nvim",   version = "v5.5.0" },
    { src = "https://github.com/stevearc/oil.nvim",               version = "v2.16.0" },
    { src = "https://github.com/folke/snacks.nvim",               version = "v2.31.0" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    { src = "https://github.com/neovim/nvim-lspconfig",           version = "v2.10.0" },
    { src = "https://github.com/saghen/blink.cmp",                version = vim.version.range("^1") }
})

-- Dependencies
vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons",     version = "master" }
})
