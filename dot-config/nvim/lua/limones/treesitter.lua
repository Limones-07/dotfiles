
local ts_languages = {
    "lua",
	"c",
	"python",
    "yuck",
    "scss",
    "css",
    "hyprlang",
    "dockerfile",
    "html",
    "yaml",
    "qmljs",
}

vim.api.nvim_create_user_command("TSInstallAll", function ()
    require("nvim-treesitter").install(ts_languages)
end, {})

vim.api.nvim_create_autocmd('FileType', {
  pattern = ts_languages,
  callback = function() vim.treesitter.start() end,
})
