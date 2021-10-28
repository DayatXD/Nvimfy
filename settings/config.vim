set lazyredraw " Don't redraw easily
set ttyfast " Performance related
set updatetime=250 " Editor update time in ms
set mouse=nv " enable mouse in normal and visual
set encoding=utf-8

" Theme Settings
lua << EOF
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
EOF
colorscheme tokyonight

" configs
set termguicolors
syntax enable
set background=dark

filetype on
set number
set relativenumber
set cursorline
set ruler
set scrolloff=6
set sidescrolloff=6
set nowrap
set lazyredraw

" Cmd
set noshowmode
set noshowcmd
set noerrorbells
set cmdheight=1
set wildmenu
set laststatus=2
set completeopt=menuone,longest
set pumheight=15 " Set the pumheight to 15 because its too small :(
set shortmess+=c

" Term
set splitbelow splitright
set clipboard=unnamedplus,unnamed

" Search
set showmatch
set incsearch
set nohlsearch
set smartcase
set ignorecase

" Tabs
filetype indent on
set smartindent
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

" Folds
set foldenable
set foldmethod=syntax
set foldnestmax=100
set foldlevelstart=99

" Misc
set formatoptions-=cro
set hidden
set updatetime=200

" Backups
set nobackup
set nowritebackup
set noswapfile
set undofile

au TextYankPost * silent! lua vim.highlight.on_yank({higroup = "Search", timeout = 2200})
