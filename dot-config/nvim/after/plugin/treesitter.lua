
local languages = {
  "vim",
  "lua",
  "zsh",
  "bash",
  "hyprlang",
  "yuck",
  "scss",
  "css",
  "c",
  "rust",
  "python",
  "java",
  "javascript",
  "typescript",
  "arduino",
  "json",
  "kotlin",
}

-- Install parsers and queries

require("nvim-treesitter").install(languages)

-- Enable syntax highlighting

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() 
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
