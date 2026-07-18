require("options")
require("keymaps")

-- General
vim.pack.add({
	-- { src = "https://github.com/ficd0/ashen.nvim", version = "main" },
	{ src = "https://github.com/datsfilipe/vesper.nvim", version = "main" },
	{ src = "https://github.com/stevearc/oil.nvim", version = "v2.16.0" },
	{ src = "https://github.com/folke/snacks.nvim", version = "v2.31.0" },
	{ src = "https://github.com/folke/flash.nvim", version = "v2.1.0" },
	{ src = "https://github.com/folke/trouble.nvim", version = "v3.7.1" },
	{ src = "https://github.com/folke/todo-comments.nvim", version = "v1.5.0" },
	{ src = "https://github.com/echasnovski/mini.nvim", version = "v0.18.0" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim", version = "v2.1.0" },
})

-- LSP & Co.
vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
	{ src = "https://github.com/neovim/nvim-lspconfig", version = "v2.10.0" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
	{ src = "https://github.com/stevearc/conform.nvim", version = "v9.1.0" },
})

-- Dependencies
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", version = "master" },
})
