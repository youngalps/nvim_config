
-- NOTE: : Current Plugins are 
-- Packer - Plugin Manager   
-- Nightfox - Colorscheme
-- Oil - File Explore 
-- Treesitter - Syntax Highlighter
-- Lspzero - lsp config
-- TODO Comments = Beautiful Comments
-- Notify - MSG display 
-- Lualine - Buffer Line
-- Neodev - Neovim Extension



-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    --Fugitive
    use('tpope/vim-fugitive')

    -- Theme
    use "EdenEast/nightfox.nvim"
   
   -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "stevearc/oil.nvim"
    
    -- Neodev
    use('folke/neodev.nvim')

    -- TODO Commnets 
    -- TODO: move the config into after/todo.lua
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup {}
        end
    }
       -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Notify
    use 'rcarriga/nvim-notify'

end)

