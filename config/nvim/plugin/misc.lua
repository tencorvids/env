-- stylua: ignore start
-- Setup
require("gitsigns").setup({})
require("todo-comments").setup({})

-- Theme
vim.cmd.colorscheme("vesper")
vim.cmd([[
  highlight Normal guibg=none
  highlight NormalNC guibg=none
  highlight NormalFloat guibg=none
  highlight NonText guibg=none

  highlight Normal ctermbg=none
  highlight NormalNC ctermbg=none
  highlight NormalFloat ctermbg=none
  highlight NonText ctermbg=none
]])

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

-- Quicker
require("quicker").setup({})
vim.keymap.set("n", "<LEADER>x", function()
	vim.diagnostic.setqflist({
		severity = { min = vim.diagnostic.severity.WARN },
		open = false,
	})
	require("quicker").toggle({
		focus = true,
		max_height = 16,
	})
end, { desc = "Toggle warnings/errors quickfix" })

vim.keymap.set("n", "<LEADER>q", function()
	vim.diagnostic.setloclist({
		severity = { min = vim.diagnostic.severity.WARN },
		open = false,
	})
	require("quicker").toggle({
		loclist = true,
		focus = true,
		max_height = 16,
	})
end, { desc = "Toggle warnings/errors loclist" })
-- stylua: ignore end
