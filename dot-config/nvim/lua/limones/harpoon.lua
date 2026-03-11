
local vks = vim.keymap.set
local harpoon = require("harpoon")
harpoon:setup()

vks("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vks("n", "<leader>ha", function() harpoon:list():add() end)
vks("n", "<leader>hr", function() harpoon:list():remove() end)
vks("n", "<leader>hn", function() harpoon:list():next() end)
vks("n", "<leader>hp", function() harpoon:list():prev() end)
vks("n", "<leader>h1", function() harpoon:list():select(1) end)
vks("n", "<leader>h2", function() harpoon:list():select(2) end)
vks("n", "<leader>h3", function() harpoon:list():select(3) end)
vks("n", "<leader>h4", function() harpoon:list():select(4) end)
vks("n", "<leader>h5", function() harpoon:list():select(5) end)
vks("n", "<leader>h6", function() harpoon:list():select(6) end)
vks("n", "<leader>h7", function() harpoon:list():select(7) end)
vks("n", "<leader>h8", function() harpoon:list():select(8) end)
vks("n", "<leader>h9", function() harpoon:list():select(9) end)
