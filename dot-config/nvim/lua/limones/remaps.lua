
local t_builtin = require("telescope.builtin")
local vks = vim.keymap.set
vim.g.mapleader = " "

vks("n", "<leader>ex", vim.cmd.Ex)
vks("n", "<leader>q", vim.cmd.quit)
vks("n", "<leader>w", vim.cmd.write)
vks("n", "<leader>so", vim.cmd.source)
vks({ "n", "v", }, "<leader>s", ":s/")
vks({ "n", "v", }, "<leader>S", ":%s/")
vks("n", "<leader>pf", t_builtin.find_files)
vks("n", "<leader>lg", t_builtin.live_grep)
vks("n", "<leader>gf", t_builtin.git_files)
vks("n", "<leader>ff", vim.lsp.buf.format)
vks("n", "<F5>", vim.cmd.UndotreeToggle)
