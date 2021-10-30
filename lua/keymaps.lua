local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd

---------------------
-- Mappings Goes Here
---------------------

-- Save And Exit
map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':wq<CR>')

-- Do Not Insert In New Line
map('n', 'o', 'o<esc>')
map('n', 'O', 'O<esc>')

-- Prevent x From Overiding Paste
map('', 'x', '"_x')
map('', 'X', '"_x')
map('', '<Del>', '"_x')

-- map ; to :
map('n', ';', ':')
map('v', ';', ':')

--nnoremap qq :q!<CR>
--vim.api.nvim_set_keymap('n', 'qq', ':q!<CR>', {noremap = true})
--map('n', 'qq', ':q!<CR>')

---------------------
-- Plugins Mappings
---------------------

map('n', '<C-f>', ':Telescope find_files<CR>', {silent = true})

map('n', '<C-Right>', ':BufferLineCycleNext<CR>', {silent = true})
map('n', '<C-Left>', ':BufferLineCyclePrev<CR>', {silent = true})

map('n', '<C-a>', ':IndentBlanklineToggle<CR>', {silent = true})

map('', '<C-c>', ':call quickmenu#toggle(0)<CR>', {silent = true})

-- Telescope
--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

---------------------
-- Improvements
---------------------

-- Yanks all Lines
vim.api.nvim_set_keymap('n', '<C-a>', ':%y<CR>', {noremap = false, silent=true})

-- Disables Recording Macros
vim.api.nvim_set_keymap('', 'q', '<Nop>', {noremap = false})

-- Do not Go Below the Line
vim.api.nvim_set_keymap('', '<PageUp>', '1000<C-U>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('', '<PageDown>', '1000<C-D>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('i', '<PageUp>', '<C-O>1000<C-U>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('i', '<PageDown>', '<C-O>1000<C-D>', {noremap = false, silent = true})

--vim.api.nvim_set_keymap('n', '<up>', '<C-w><up>', {noremap = false})
--vim.api.nvim_set_keymap('n', '<down>', '<C-w><down>', {noremap = false})
--vim.api.nvim_set_keymap('n', '<left>', '<C-w><left>', {noremap = false})
--vim.api.nvim_set_keymap('n', '<right>', '<C-w><right>', {noremap = false})

-- Better Completion
-- inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
-- inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
-- inoremap <expr> <Right> pumvisible() ? "<C-y>" :  "<Right>"
-- inoremap <expr> <CR> pumvisible() ? "<C-y>" : "<CR>"
-- inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
