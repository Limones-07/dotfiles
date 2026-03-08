local o = vim.opt

o.number = true
o.relativenumber = true

o.wrap = false

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.colorcolumn = "80"
o.signcolumn = "yes"
o.winborder = "rounded"
