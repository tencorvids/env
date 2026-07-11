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
