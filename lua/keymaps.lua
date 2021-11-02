local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd
local silent = {silent=true}


---------------------
-- Mappings Goes Here
---------------------

map('n', '<leader>f', ':Telescope find_files<CR>', silent)
map('n', '<leader>l', ':IndentBlanklineToggle<CR>', silent)
map('', '<space>c', ':call quickmenu#toggle(0)<CR>', silent)

map('n', '<C-Right>', ':BufferLineCycleNext<CR>', silent)
map('n', '<C-Left>', ':BufferLineCyclePrev<CR>', silent)

-- Open
map('n', '<leader>S', ':Startify<CR>')
map('n', '<leader>T', ':tabnew<CR>')
map('', '<leader>t', ':ToggleTerm<CR>', silent)

-- Save And Exit
map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':wq<CR>')
--map('n', 'qq', ':q!<CR>')

-- Undo
map('i', '<C-z>', '<Esc>ua')

-- map ; to :
map('n', ';', ':')
map('v', ';', ':')

-- TAB to cycle buffers
map('n', '<TAB>', ':bnext<CR>')
map('n', '<S-TAB>', ':bprevious<CR>')

-- Duplicate line up/down
map('n', '<C-M-j>', [["dY"dp]])
map('n', '<C-M-k>', [["dY"dP]])

-- PackerSync
map("n", "<leader>ps", [[<Cmd>PackerSync<CR>]],{silent=true})


--------------------
-- Defaults
--------------------

-- Do Not Insert In New Line
map('n', 'o', 'o<esc>')
map('n', 'O', 'O<esc>')

-- Prevent x From Overiding Paste
map('', 'x', '"_x')
map('', 'X', '"_x')
map('', '<Del>', '"_x')

--Undo breakpoints
--map('i', ',', ',<c-q>u')
--map('i', '.', '.<c-q>u')
--map('i', '!', '!<c-q>u')
--map('i', '?', '?<c-q>u')

--map('n', 'o', 'o<Esc>^Da<Esc>')
--map('n', 'O', 'O<Esc>^Da<Esc>')


-- Yanks all Lines
vim.api.nvim_set_keymap('n', '<C-a>', ':%y<CR>', {noremap = false, silent=true})

-- Disables Recording Macros
vim.api.nvim_set_keymap('', 'q', '<Nop>', {noremap = false})

-- Some Smoothie
vim.api.nvim_set_keymap('', 'ScrollWheelUp', '<C-U>', {noremap = false})
vim.api.nvim_set_keymap('', 'ScrollWheelDown', '<C-D>', {noremap = false})

-- Do not Go Below the Line
vim.api.nvim_set_keymap('', '<PageUp>', '1000<C-U>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('', '<PageDown>', '1000<C-D>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('i', '<PageUp>', '<C-O>1000<C-U>', {noremap = false, silent = true})
vim.api.nvim_set_keymap('i', '<PageDown>', '<C-O>1000<C-D>', {noremap = false, silent = true})

-- Window Navigations
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
