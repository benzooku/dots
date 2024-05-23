-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'daltonmenezes/aura-theme',
        rtp = 'packages/neovim',
        config = function()
            vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
        end
    }

    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- Recommended, not required.
    use ('nvim-treesitter/playground')
    use ('tpope/vim-fugitive')
    use ('mbbill/undotree')

    use ('https://codeberg.org/esensar/nvim-dev-container')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},

          }
    }

    use ('tpope/vim-endwise')
    use ('tpope/vim-rails')
    
    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use ('echasnovski/mini.nvim')
    use ('echasnovski/mini.nvim')
end)
