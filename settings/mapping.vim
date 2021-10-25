" Remaps ---------------------------------

let mapleader=" "


"au! BufWritePost $MYVIMRC source %
nnoremap <silent> ,z  :source $MYVIMRC<cr>
nnoremap <silent> <Leader>v :e $MYVIMRC<cr>

" save quit
nnoremap <C-s> :w!<CR>
nnoremap <C-q> :q!<CR>
" nnoremap qq :q!<CR>

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
nnoremap <Leader>, ,,<CR>  "Emmet
nnoremap <silent> <C-p> :Files<CR>
nnoremap <Leader>l :IndentBlanklineToggle<CR>

" Telescope Remaps
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
