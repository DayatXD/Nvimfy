local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd

-- Mappings Goes Here

map('n', ',z', ':source $MYVIMRC<cr>')
map('n', '<Leader>v', ':e $MYVIMRC<cr>')


map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':wq<CR>')


map('n', '<Space><Space>', 'za<CR>')

map('n', 'o', 'o<esc>')
map('n', 'O', 'O<esc>')

map('', 'x', '"_x')
map('', 'X', '"_x')
map('', '<Del>', '"_x')

cmd([[

map q <Nop>

" nnoremap qq :q!<CR>

map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>

]])

--Plugins Mappings

map('', '<Space>c', ':call quickmenu#toggle(0)<CR>')
map('n', '<silent><C-p>', 'Telescope find_files')
map('n', '<Leader>l', ':IndentBlanklineToggle<CR>')
