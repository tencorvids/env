require("nvim-treesitter").setup({
    ensure_installed = {
        "bash",
        "c",
        "go",
        "lua"
    },
    sync_install = false,

    highlight = true,
    indent = true
})
