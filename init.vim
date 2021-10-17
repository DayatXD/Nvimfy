"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● AyeSpacey
"   / ___ |___/ /      □ @ayesumit
"  /_/  |_/____/       ■ Nvim Configs
"●                 ●        
"____________________________________


call plug#begin('~/.config/nvim/plugged')

"         Color Schemes
Plug 'folke/tokyonight.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'wadackel/vim-dogrun'
Plug 'Avimitin/neovim-deus'
Plug 'xiyaowong/nvim-transparent'

"              UI
Plug 'alvarosevilla95/luatab.nvim'
Plug 'mhinz/vim-startify'
Plug 'famiu/feline.nvim'

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
Plug 'junegunn/fzf.vim'
Plug 'skywind3000/quickmenu.vim'
Plug 'numToStr/Comment.nvim'
Plug 'Pocco81/AutoSave.nvim'


"            Pairs
Plug 'windwp/nvim-autopairs'
Plug 'AndrewRadev/tagalong.vim'
Plug 'windwp/nvim-ts-autotag'

"    Snippets and Completion
Plug 'mattn/emmet-vim'
Plug 'rafamadriz/friendly-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" configs
syntax enable
set termguicolors
set background=dark
colorscheme dogrun

filetype on
set number
set cursorline
set ruler
set mouse=r
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
set pumheight=5
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
set autochdir

" Backups
set nobackup
set nowritebackup
set noswapfile
set undofile


" Remaps ---------------------------------

let mapleader=","

"au! BufWritePost $MYVIMRC source %
nnoremap <silent> ,z  :source $MYVIMRC<cr>
nnoremap <silent> <Leader>v :e $MYVIMRC<cr>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>
nnoremap qq :q!<CR>

nnoremap <Space><Space> za<CR>

nnoremap o o<esc>
nnoremap O O<esc>

map q <Nop>

map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>

noremap x "_x
noremap X "_x
noremap <Del> "_x

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" :  "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"


autocmd VimResized * wincmd =
au FocusGained,BufEnter * :checktime

" Plugin Remaps

noremap <Space>c :call quickmenu#toggle(0)<CR>
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>
nnoremap <Leader> ,,<CR>  "Emmet
nnoremap <silent> <C-p> :Files<CR>
nnoremap <Leader>l :IndentBlanklineToggle<CR>

" Plugin Configs

let g:nvimfy_header = [
         \ '●     ___   _____  ●',
         \ '     /   | / ___/   ',
         \ '    / /| | \__ \    ',
         \ '   / ___ |___/ /    ',
         \ '  /_/  |_/____/     ',
         \ '●                  ●',
         \]
let g:nvimfy_footer = [
         \ '',
         \ 'ver: 2.1 | lsp: coc',
         \ '',
         \ ' [ Happy Coding! ]',
         \]

let g:startify_custom_header = startify#center(g:nvimfy_header)
let g:startify_custom_footer = startify#center(g:nvimfy_footer)

let g:startify_lists = [
        \ { 'type': 'bookmarks'},
        \ { 'type': 'commands'},
        \ ]
let g:startify_bookmarks = [
        \ { 'z': '~/.zshrc' },
        \ { 'i': '~/.config/nvim/init.vim' },
        \ '~/storage/shared/',
        \ ]
let g:startify_commands = [
        \ {'f': ['Files', ':Files']},
        \ {'c': ['Colors', ':Colors']},
        \ ]

let g:startify_enable_special = 0
let g:startify_padding_left = 2
 

let g:move_key_modifier = 'C'


let g:indent_blankline_enabled = v:false
let g:indent_blankline_filetype_exclude = ['help', 'startify']


let g:cursorline_timeout = 2000


let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


let g:fzf_preview_window = ['up:80%:hidden', 'ctrl-/']
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


let g:coc_global_extensions = ['coc-marketplace','coc-json']


" Use Space + c for useful menu
call quickmenu#reset()

let g:quickmenu_padding_left = 0
let g:quickmenu_padding_right = 1
let g:quickmenu_ft_blacklist = []
let g:quickmenu_options = 'HL'

call quickmenu#header('')

call quickmenu#append("# Utility", '')
call quickmenu#append("Files", 'Files', "Shows Directory and Files")
call quickmenu#append("Buffers", 'Buffers', "Shows Buffers")
call quickmenu#append("Theme", 'Colors', "Change Colorscheme")

call quickmenu#append("# Enchant", '')
call quickmenu#append("Indentline", "IndentBlanklineToggle", "Toggle IndentLine")
call quickmenu#append("Rainbow", "RainbowToggle", "Toggle Rainbow")
call quickmenu#append("Colorizer", "ColorizerToggle", "Toggle Color Previews")
call quickmenu#append("Line Numbers", "set nonu!", "Toggle Line Numbers")
call quickmenu#append("Spell Check", "set spell!", "Toggle Spell Check")


function! FloatWindow() abort
    let width = 30
    let height = 20
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
let g:plug_window = 'call FloatWindow()'

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


lua require('base')

"   Written with  ❤️  by AyeSpacey
"-------------End-Of-File-----------
