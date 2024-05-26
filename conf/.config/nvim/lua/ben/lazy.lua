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
    


    'nvim-treesitter/playground',
    'tpope/vim-fugitive',
    'mbbill/undotree',


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

    'echasnovski/mini.nvim',

    {
        "arnaupv/nvim-devcontainer-cli",
        opts = {
            -- By default, if no extra config is added, following nvim_dotfiles are
            -- installed: "https://github.com/LazyVim/starter"
            -- This is an example for configuring other nvim_dotfiles inside the docker container
            nvim_dotfiles_repo = "https://github.com/benzooku/dots.git",
            nvim_dotfiles_install_command = "cd /home/null/dots && ./install.sh",
            -- In case you want to change the way the devenvironment is setup, you can also provide your own setup
            setup_environment_repo = "https://github.com/arnaupv/setup-environment",
            setup_environment_install_command = "apt -y install neovim",
            remove_existing_container = true,
            nvim_dotfiles_directory = "dots/",
        }
    },


}

local opts = {}

require("lazy").setup(plugins, opts)



