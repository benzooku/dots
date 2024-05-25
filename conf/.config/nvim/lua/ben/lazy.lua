vim.g.mapleader = " "

local plugins = {
    'wbthomason/packer.nvim',

    {
        'nvim-telescope/telescope.nvim', version = '0.1.6',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    {
        "baliestri/aura-theme",
        lazy = false,
        priority = 1000,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
            vim.cmd([[colorscheme aura-dark]])
        end
    },
    

    'nvim-treesitter/nvim-treesitter', -- Recommended, not required.
    'nvim-treesitter/playground',
    'tpope/vim-fugitive',
    'mbbill/undotree',

    'https://codeberg.org/esensar/nvim-dev-container',

    {    
        'VonHeikemen/lsp-zero.nvim',
        version = 'v3.x',
        dependencies = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},

          }
    },

    'tpope/vim-endwise',
    'tpope/vim-rails',
    
    "nvim-lua/plenary.nvim", -- don't forget to add this one if you don't have it yet!

   {
       "ThePrimeagen/harpoon",
       branch = "harpoon2",
       dependencies = { "nvim-lua/plenary.nvim" }
   },

    'echasnovski/mini.nvim'



}

local opts = {}

require("lazy").setup(plugins, opts)



