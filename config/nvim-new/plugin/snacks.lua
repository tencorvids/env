require("snacks").setup({
	explorer = { enabled = true, replace_netrw = true },
	image = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	lazygit = { enabled = true },
	picker = { enabled = true },
})

-- stylua: ignore start

-- Pickers
vim.keymap.set("n", "<LEADER><SPACE>", function() Snacks.picker.smart() end, { desc = "Smart find files" })
vim.keymap.set("n", "<LEADER>e", function() Snacks.picker.explorer() end, { desc = "File explorer" })
vim.keymap.set("n", "<LEADER>:", function() Snacks.picker.command_history() end, { desc = "Command history" })

-- Grep & Search
vim.keymap.set("n", "<LEADER>/", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<LEADER>sb", function() Snacks.picker.lines() end, { desc = "Grep buffer lines" })
vim.keymap.set("n", "<LEADER>sm", function() Snacks.picker.man() end, { desc = "Search man pages" })
vim.keymap.set("n", "<LEADER>sh", function() Snacks.picker.help() end, { desc = "Search help" })
vim.keymap.set("n", "<LEADER>sk", function() Snacks.picker.keymaps() end, { desc = "Search keymaps" })
vim.keymap.set("n", "<LEADER>si", function() Snacks.picker.icons() end, { desc = "Search icons" })

-- Find
vim.keymap.set("n", "<LEADER>ff", function() Snacks.picker.files() end, { desc = "Find files" })
vim.keymap.set("n", "<LEADER>fb", function() Snacks.picker.buffers() end, { desc = "Find buffers" })

-- Git
vim.keymap.set("n", "<LEADER>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })
vim.keymap.set("n", "<LEADER>gb", function() Snacks.picker.git_branches() end, { desc = "Git branches" })
vim.keymap.set("n", "<LEADER>gl", function() Snacks.picker.git_log() end, { desc = "Git log" })

-- stylua: ignore end
