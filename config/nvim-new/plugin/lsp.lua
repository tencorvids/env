local servers = {
    "clangd",
    "gopls",
    "lua_ls"
}

for _, server in pairs(servers) do
    vim.lsp.enable(server)
end
