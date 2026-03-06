
print("Hello from main init.lua!")

-- Leader remaps

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Init lazy

require("config.lazy")

