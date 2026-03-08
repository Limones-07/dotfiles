
local ts_languages = {
    "lua",
	"c",
	"python",
    "yuck",
    "scss",
    "css",
}

require("nvim-treesitter").install(ts_languages)
vim.api.nvim_create_autocmd('FileType', {
  pattern = ts_languages,
  callback = function() vim.treesitter.start() end,
})
