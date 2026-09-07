
local gh = function(pack) return 'https://github.com/' .. pack end

vim.pack.add({
    { src = gh("catppuccin/nvim") },
    { src = gh("nvim-lua/plenary.nvim") },
    { src = gh("nvim-telescope/telescope-fzf-native.nvim"), build = "make" },
    { src = gh("nvim-telescope/telescope.nvim") },
    { src = gh("mbbill/undotree") },
    { src = gh("ThePrimeagen/harpoon"), version = "harpoon2" },
    { src = gh("mason-org/mason.nvim") },
    { src = gh("nvim-treesitter/nvim-treesitter"), build = ":TSUpdate" },
    { src = gh("elkowar/yuck.vim") },
    { src = gh("tpope/vim-liquid") },
    { src = gh("windwp/nvim-autopairs") },
    { src = gh("neovim/nvim-lspconfig") },

    { src = gh("hrsh7th/cmp-nvim-lsp"), opt = true },
    { src = gh("hrsh7th/cmp-buffer"), opt = true },
    { src = gh("hrsh7th/cmp-path"), opt = true },
    { src = gh("hrsh7th/cmp-cmdline"), opt = true },
    { src = gh("hrsh7th/nvim-cmp"), opt = true },
})

require("limones")
