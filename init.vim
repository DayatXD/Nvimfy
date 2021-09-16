"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● AyeSpacey-/-@ayesumit
"   / ___ |___/ /      □ Nvim Configs
"  /_/  |_/____/       ■ For Web....
"●                 ●        
"____________________________________

lua << EOF
require("base")
EOF

call plug#begin('~/.config/nvim/plugins')

"    Color Schemes
Plug 'glepnir/zephyr-nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'wadackel/vim-dogrun'
Plug 'mhartington/oceanic-next'
Plug 'ghifarit53/tokyonight-vim'
Plug 'Avimitin/neovim-deus'

"        UI
Plug 'mhinz/vim-startify'
Plug 'akinsho/bufferline.nvim'
Plug 'itchyny/lightline.vim'
" Plug 'glepnir/galaxyline.nvim'

"      Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'

"       Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'

"     Enhancements
Plug 'psliwka/vim-smoothie'
Plug '907th/vim-auto-save'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'yamatsum/nvim-cursorline'
Plug 'luochen1990/rainbow'
"Plug 'ap/vim-css-color'
"Plug 'etdev/vim-hexcolor'
Plug 'kyazdani42/nvim-web-devicons'

"        Git
Plug 'mhinz/vim-signify'

"        
Plug 'jbyuki/instant.nvim'

"         Tools
Plug 'junegunn/fzf.vim'
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
colorscheme zephyr

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

" Folds       --Currently Working--
set foldenable
set foldmethod=expr  "syntax
set foldexpr=nvim_treesitter#foldexpr()
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

nnoremap <Space><Space> za<CR>

nnoremap o o<esc>
nnoremap O O<esc>

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>":
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

autocmd VimResized * wincmd =

" Plugin Config zone

let g:lightline = {
\   'colorscheme': 'nightfox',
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

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><mymap> :BufferLineMoveNext<CR>
nnoremap <silent><mymap> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

let g:rainbow_active = 0

let g:startify_custom_header = [
        \ '●     ___   _____ ●   __  ___         __ ',
        \ '     /   | / ___/    /  |/  /__ _____/ / ',
        \ '    / /| | \__ \    / /|_/ / _ `/ __/ _ \',
        \ '   / ___ |___/ /   /_/  /_/\_,_/\__/_//_/',
        \ '  /_/  |_/____/         ',
        \ '●                 ●     version: 1.8     ',
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
let g:indent_blankline_filetype_exclude = ['help', 'startify']
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:cursorline_timeout = 2000

let g:user_emmet_leader_key=','
nnoremap <Leader> ,,<CR>
nnoremap <Space> ,,<CR>
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

nnoremap <Space>f :Files<CR>
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Recomended
" --coc-html
" --coc-css
" --coc-tsserver
" --coc-json
" --coc-sh
" --coc-htmlhint
" --coc-highlight
" --coc-html-css-support

let g:coc_global_extensions = ['coc-marketplace','coc-json', 'coc-highlight']

" Use Space + c for useful menu
call quickmenu#reset()
noremap <Space>c :call quickmenu#toggle(0)<CR>

call quickmenu#append("# Tools", '')
call quickmenu#append("Project Folder", 'Files', "Shows Directory and Files In PWD")
call quickmenu#append("Buffers", 'Buffers', "Shows Directory and Files In PWD")
call quickmenu#append("Theme", 'Colors', "Change Colorscheme Locally")
call quickmenu#append("Maps", 'Maps', "Show Editor Mappings  --Currently Working")
call quickmenu#append("Command Mode", ':Commands', "Runs Commands")

call quickmenu#append("# Misc", '')
call quickmenu#append("Indentline", "IndentBlanklineToggle", "Toggle IndentLine")
call quickmenu#append("Rainbow", "RainbowToggle", "Toggle Rainbow")
call quickmenu#append("Line Numbers", "set nonu", "Toggle Line Numbers")
call quickmenu#append("Turn spell %{&spell? 'off':'on'}", "set spell!", "enable/disable spell check (:set spell!)")


function! BreakHabitsWindow() abort
    let width = 50
    let height = 30

    let buf = nvim_create_buf(v:false, v:true)
    let ui = nvim_list_uis()[0]
    let opts = {'relative': 'editor',
                \ 'width': width,
                \ 'height': height,
                \ 'col': (ui.width/2) - (width/2),
                \ 'row': (ui.height/2) - (height/2),
                \ 'anchor': 'NW',
                \ 'style': 'minimal',
                \ }
    let win = nvim_open_win(buf, 1, opts)
endfunction

let g:plug_window = 'call BreakHabitsWindow()'

"  Written with  ❤️  by AyeSpacey
"------------End-Of-File-----------
