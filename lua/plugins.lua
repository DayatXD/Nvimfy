vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)

    -- Packer managing itself
    use 'wbthomason/packer.nvim'

--         Color Schemes
    use 'folke/tokyonight.nvim'
    use 'olimorris/onedarkpro.nvim'
    use 'Mangeshrex/uwu.vim'
    use 'wadackel/vim-dogrun'
    use 'Avimitin/neovim-deus'
    use 'xiyaowong/nvim-transparent'

--              UI
    use 'mhinz/vim-startify'
    use 'beauwilliams/statusline.lua'
    use 'akinsho/bufferline.nvim'

--           Editing
    use 'mg979/vim-visual-multi'
    use 'matze/vim-move'
    use 'godlygeek/tabular'
    use 'numToStr/Comment.nvim'
    use {
        'Pocco81/AutoSave.nvim',
        disable=true
    }

--           Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'othree/html5.vim',
        ft = {
            'html',
            'html5'
        }
    }
    use {
        'hail2u/vim-css3-syntax',
        ft = {
            'css'
        }
    }
    use {
        'plasticboy/vim-markdown',
        ft = {
            'markdown'
        }
    }

--        Enhancements
    use 'psliwka/vim-smoothie'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'yamatsum/nvim-cursorline'
    use 'norcalli/nvim-colorizer.lua'
    use 'p00f/nvim-ts-rainbow'
    use 'kyazdani42/nvim-web-devicons'

--             Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'

--            Tools
    use 'skywind3000/quickmenu.vim'
    use 'akinsho/toggleterm.nvim'

--            Pairs
    use 'windwp/nvim-autopairs'
    use 'AndrewRadev/tagalong.vim'
    use 'windwp/nvim-ts-autotag'


--          Telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'


--            LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind-nvim'

--    Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

--    Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-calc'
    use 'saadparwaiz1/cmp_luasnip'
    use 'octaltree/cmp-look'
    use 'ray-x/cmp-treesitter'
    use 'f3fora/cmp-spell'

end
)
