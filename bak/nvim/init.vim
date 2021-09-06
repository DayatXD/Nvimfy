   "   ___   _____
"     /   | / ___/       ○ Sumit Burman
"    / /| | \__ \        ● @ayesumit/spacey
"   / ___ |___/ /        □ Nvim Configs
"  /_/  |_/____/         ■ For Web....
"
"____________________________________


" Auto Insall
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

"Color Schemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'

"Other Colors
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'

"Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'

"Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mg979/vim-visual-multi'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'

"Syntax
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'

"Utility
Plug '907th/vim-auto-save'
Plug 'mcchrish/nnn.vim'
Plug 'mhinz/vim-signify'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skywind3000/quickmenu.vim'

"pairs and indent
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"Snippets and Completion
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/vim-peekaboo'
Plug 'jbyuki/instant.nvim'


call plug#end()

let g:instant_username = "spacey"


syntax enable

set termguicolors
set background=dark
colorscheme tokyonight


filetype on
set number
set cursorline
set ruler
set mouse=a
"set scrolloff=8
set nowrap
set lazyredraw

" Cmd
set noshowmode
set noerrorbells
set cmdheight=1
set wildmenu
set laststatus=2
set completeopt=menuone,longest
set pumheight=4
set shortmess+=c

" Term
set splitbelow splitright

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
set foldnestmax=10
set foldlevelstart=99

" Misc
set formatoptions-=cro
set updatetime=300
set autochdir

"Backups
set nobackup
set nowritebackup
"set backupdir=~/.config/nvim/backups
"set directory=~/.config/nvim/swaps
set undofile
"set undodir=~/.config/nvim/.tmp

" Remaps
"Basics
let mapleader=","

"au! BufWritePost $MYVIMRC source %
nnoremap <silent> ,z  :source $MYVIMRC<cr>
nnoremap <silent> <Leader>v :e $MYVIMRC<cr>

inoremap .. <Esc>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>
nnoremap qq :q!<CR>

nnoremap <Space> za

noremap <silent> <C-Up> :res +2<CR>
noremap <silent> <C-Down> :res -2<CR>
noremap <silent> <C-Left> :vert res +2<CR>
noremap <silent> <C-Right> :vert res -2<CR>

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>
nnoremap <Leader>= :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" Auto-resize splits when Vim gets resized.
autocmd VimResized * wincmd =

" Plugin Config zone
let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'readonly', 'filename', 'modified' ]],
\    'right':[[ 'lineinfo' ] ]
\   },
\ 'mode_map': {
\ 'n' : 'N',
\ 'i' : 'I',
\ 'R' : 'R',
\ 'v' : 'V',
\ 'V' : 'VL',
\ "\<C-v>": 'VB',
\ 'c' : 'C',
\ 's' : 'S',
\ 'S' : 'SL',
\ "\<C-s>": 'SB',
\ 't': 'T'
\ },
\}

let g:rainbow_active = 1

let g:startify_custom_header = [
        \ '   _  __     _         __  ___         __  ',
        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /  ',
        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \ ',
        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ ',
        \]
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Recents']            },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ { 'z': '~/.zshrc' },
            \ '~/storage/shared/',
            \ ]
"let g:startify_session_dir = '~/.config/nvim/sessions'
"let g:startify_session_autoload = 0
"let g:startify_session_delete_buffers = 1
"let g:startify_enable_special = 0

let g:closetag_filenames = '*.html'
let g:closetag_shortcut = '>'

let g:move_key_modifier = 'C'

let g:indentLine_enabled = 0
nnoremap <Leader>l :IndentBlanklineToggle<CR>
let g:indentLine_char = '|'
let g:indentLine_setColors = 0
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indent_blankline_filetype_exclude = ['help', 'startify']

let g:better_whitespace_guicolor='<desired_color>'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

let g:user_emmet_leader_key=','
nnoremap <Leader> ,,<CR>
nnoremap <Space> ,,<CR>
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:nnn#set_default_mappings = 0
nnoremap <leader>n :NnnPicker %:p:h<CR>
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#session = 'global'

let g:coc_global_extensions = ['coc-html','coc-css','coc-tsserver','coc-json','coc-sh','coc-htmlhint','coc-highlight','coc-html-css-support']


call quickmenu#reset()

" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

noremap <silent><F12> :call quickmenu#toggle(0)


" new section: empty action with text starts with "#" represent a new section
call quickmenu#append("# Debug", '')

" script between %{ and } will be evaluated before menu open
call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")

call quickmenu#append("# Git", '')
call quickmenu#append("git diff", 'Gvdiff', "use fugitive's Gvdiff on current document")
call quickmenu#append("git add", 'Gvdiff', "use fugitive's Gvdiff on current document")
call quickmenu#append("git commit", 'Gvdiff', "use fugitive's Gvdiff on current document")
call quickmenu#append("git status", 'Gstatus', "use fugitive's Gstatus on current document")

call quickmenu#append("# Misc", '')
call quickmenu#append("Turn paste %{&paste? 'off':'on'}", "set paste!", "enable/disable paste mode (:set paste!)")
call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")

call quickmenu#append("Function List", "TagbarToggle", "Switch Tagbar on/off")
