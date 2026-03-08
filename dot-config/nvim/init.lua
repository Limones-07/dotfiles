
local gh = function(pack) return 'https://github.com/' .. pack end

vim.pack.add({
    { src = gh("catppuccin/nvim") },
    { src = gh("elkowar/yuck.vim") },
    { src = gh("nvim-lua/plenary.nvim") },
    { src = gh("nvim-telescope/telescope-fzf-native.nvim"), build = "make" },
    { src = gh("nvim-telescope/telescope.nvim") },
    { src = gh("mbbill/undotree") },
    { src = gh("mason-org/mason.nvim") },
    { src = gh("nvim-treesitter/nvim-treesitter"), build = ":TSUpdate" },
    { src = gh("neovim/nvim-lspconfig") },

    { src = gh("hrsh7th/cmp-nvim-lsp") },
    { src = gh("hrsh7th/cmp-buffer") },
    { src = gh("hrsh7th/cmp-path") },
    { src = gh("hrsh7th/cmp-cmdline") },
    { src = gh("hrsh7th/nvim-cmp") },
})

require("limones")
