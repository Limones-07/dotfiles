
-- Enable code completion

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  })
})

-- Set up lspconfig

local language_servers = {
  'lua_ls',
  'pyright',
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for i, ls in ipairs(language_servers) do
  vim.lsp.config(ls, { capabilities = capabilities })
  vim.lsp.enable(ls)
end

