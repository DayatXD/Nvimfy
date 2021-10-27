let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif





call plug#begin('~/.config/nvim/plugins/plugged')


"         Color Schemes
Plug 'folke/tokyonight.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'Mangeshrex/uwu.vim'
Plug 'wadackel/vim-dogrun'
Plug 'Avimitin/neovim-deus'
Plug 'xiyaowong/nvim-transparent'

"              UI
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

"          Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"            LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'onsails/lspkind-nvim'

"         Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

"       Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-calc'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'octaltree/cmp-look'
Plug 'ray-x/cmp-treesitter'
Plug 'f3fora/cmp-spell'

call plug#end()
