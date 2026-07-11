require("oil").setup({
    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "<LEADER>;", "<CMD>Oil<CR>", { desc = "Trigger oil" })
