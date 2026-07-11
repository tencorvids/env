-- Theme
vim.cmd.colorscheme("ashen")

-- Setup
require("gitsigns").setup({})

-- Oil
require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "<LEADER>;", "<CMD>Oil<CR>", { desc = "Trigger oil" })

-- Flash
require("flash").setup({})
-- stylua: ignore 
vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end, { desc = "Flash" })
