require("mason").setup()

local language_servers = {
    c = "clangd",
    lua = "lua_ls",
    python = "pyright",
    dockerfile = "docker-language-server",
    html = "html",
    qml = "qmlls",
    qmljs = "qmlls",
}

local capabilities = require("limones.lsp.capabilities").capabilities
for filetype, ls in pairs(language_servers) do
    vim.lsp.config(ls, { capabilities = capabilities })
    vim.api.nvim_create_autocmd("FileType", {
        pattern = filetype,
        callback = function ()
            vim.lsp.enable(ls)
        end,
    })
end
