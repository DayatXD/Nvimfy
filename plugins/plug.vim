call plug#begin('~/.config/nvim/plugins/plugged')

"         Color Schemes
Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim'
" Plug 'wadackel/vim-dogrun'
Plug 'Avimitin/neovim-deus'
Plug 'xiyaowong/nvim-transparent'

"              UI
" Plug 'alvarosevilla95/luatab.nvim'
Plug 'mhinz/vim-startify'
Plug 'beauwilliams/statusline.lua'
Plug 'akinsho/bufferline.nvim'

"           Editing
Plug 'mg979/vim-visual-multi'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'

"           Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'plasticboy/vim-markdown'

"        Enhancements
Plug 'psliwka/vim-smoothie'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'yamatsum/nvim-cursorline'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'p00f/nvim-ts-rainbow'
Plug 'kyazdani42/nvim-web-devicons'

"             Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

"            Tools
Plug 'skywind3000/quickmenu.vim'
Plug 'numToStr/Comment.nvim'
" Plug 'Pocco81/AutoSave.nvim' " Turn off autosave because i didn't like it

"            Pairs
Plug 'windwp/nvim-autopairs'
Plug 'AndrewRadev/tagalong.vim'
Plug 'windwp/nvim-ts-autotag'

"    Snippets and Completion
Plug 'mattn/emmet-vim'
Plug 'rafamadriz/friendly-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
