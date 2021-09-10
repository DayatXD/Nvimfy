"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● @ayesumit/spacey 
"   / ___ |___/ /      □ Nvim Configs 
"  /_/  |_/____/       ■ For Web....
"●                 ●        
"____________________________________


" Auto Insall
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

"    Color Schemes
Plug 'morhetz/gruvbox'
Plug 'wadackel/vim-dogrun'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'ghifarit53/tokyonight-vim'

"        UI
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
"--Plug 'glepnir/dashboard-nvim'

"      Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'

"       Syntax
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'

"     Enhancements
Plug 'psliwka/vim-smoothie'
Plug '907th/vim-auto-save'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'luochen1990/rainbow'
Plug 'ap/vim-css-color'

"        Others
Plug 'mhinz/vim-signify'
Plug 'jbyuki/instant.nvim'

"         Tools
Plug 'mcchrish/nnn.vim'
Plug 'skywind3000/quickmenu.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dkramer95/KSwitch'

"     Pairs and Indent
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
"--Plug 'tpope/vim-sleuth'

"   Snippets and Completion
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:instant_username = "spacey"


syntax enable
set termguicolors
set background=dark
colorscheme OceanicNext

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
set fillchars=""
set formatoptions-=cro
set updatetime=250
set autochdir

"Backups
set nobackup
set nowritebackup
set undofile
"set backupdir=~/.config/nvim/backups
"set directory=~/.config/nvim/swaps
"set undodir=~/.config/nvim/.tmp

" Remaps
let mapleader=","

"au! BufWritePost $MYVIMRC source %
nnoremap <silent> ,z  :source $MYVIMRC<cr>
nnoremap <silent> <Leader>v :e $MYVIMRC<cr>

inoremap .. <Esc>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>
nnoremap qq :q!<CR>

nnoremap <space> :

nnoremap <Space><Space> za<CR>

nnoremap o o<esc>
nnoremap O O<esc>

nnoremap n nzz
nnoremap N Nzz

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <TAB> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

autocmd VimResized * wincmd =

" Plugin Config zone
let g:lightline = {
\   'colorscheme': 'ayu',
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

let g:rainbow_active = 0

let g:startify_custom_header = [
        \ '●     ___   _____ ●   __  ___         __ ',
        \ '     /   | / ___/    /  |/  /__ _____/ / ',
        \ '    / /| | \__ \    / /|_/ / _ `/ __/ _ \',
        \ '   / ___ |___/ /   /_/  /_/\_,_/\__/_//_/',
        \ '  /_/  |_/____/         ',
        \ '●                 ●     version: 1.6     ',
        \]
let g:startify_lists = [
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

let g:indent_blankline_enabled = v:false
nnoremap <Leader>l :IndentBlanklineToggle<CR>
let g:indentLine_char = '|'
let g:indentLine_setColors = 1
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indent_blankline_filetype_exclude = ['help', 'startify']

let g:user_emmet_leader_key=','
nnoremap <Leader> ,,<CR>
nnoremap <Space> ,,<CR>
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:nnn#set_default_mappings = 0
nnoremap <Space>n :NnnPicker %:p:h<CR>
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#session = 'global'

let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-tsserver', 'coc-json', 'coc-sh', 'coc-htmlhint', 'coc-highlight', 'coc-html-css-support']


call quickmenu#reset()
noremap <Space>c :call quickmenu#toggle(0)<CR>

call quickmenu#append("# Colorscheme", '')
call quickmenu#append("TokyoNight", 'colorscheme tokyonight', "TokyoNight Colorscheme")
call quickmenu#append("Gruvbox", 'colorscheme gruvbox', "Yellowish Fellow")
call quickmenu#append("OneDark", 'colorscheme onedark', "Dark Bright")
call quickmenu#append("OceanicNext", 'colorscheme OceanicNext', "Evergreen Tinted")
call quickmenu#append("Dogrun", 'colorscheme dogrun', "Purpalist Minimalist")

call quickmenu#append("# Misc", '')
call quickmenu#append("Indentline", "IndentBlanklineToggle", "Toggle IndentLine")
call quickmenu#append("Rainbow", "RainbowToggle", "Toggle Rainbow")
call quickmenu#append("Line Numbers", "set nonu", "Toggle Line Numbers")
call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")

call quickmenu#append("# Debug", '')
call quickmenu#append("Run %{expand('%:t')}", '!./%', "Run current file")
