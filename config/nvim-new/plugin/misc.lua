-- stylua: ignore start
-- Theme
vim.cmd.colorscheme("ashen")
vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])

-- Setup
require("gitsigns").setup({})
require("todo-comments").setup({})

-- Oil
require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "<LEADER>;", "<CMD>Oil<CR>", { desc = "Trigger oil" })

-- Flash
require("flash").setup({})
vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end, { desc = "Flash" })

-- Trouble
require("trouble").setup({})
vim.keymap.set("n", "<LEADER>x", "<CMD>Trouble diagnostics toggle<CR>", { desc = "Toggle trouble list" })
-- stylua: ignore end
