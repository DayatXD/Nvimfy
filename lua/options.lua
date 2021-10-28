-------------------- HELPERS -------------------------------
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

--configs
vim.o.lazyredraw = true -- Don't redraw easily
vim.o.ttyfast = true -- Performance related
vim.o.updatetime = 250 -- Editor update time in ms
vim.o.mouse = 'nv' -- enable mouse in normal and visual
vim.o.encoding ='utf-8'

-- Theme Settings
g.tokyonight_style = "night"
g.tokyonight_italic_functions = true
g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
cmd([[colorscheme tokyonight]])

g.mapleader = ','

opt.termguicolors = true
opt.background = 'dark'

opt.syntax = 'on'
vim.o.filetype = 'on'
opt.number = true
opt.cursorline = true
opt.ruler = true
opt.mouse = 'nv'
opt.scrolloff = 6
opt.sidescrolloff = 6
opt.wrap = false
opt.lazyredraw = true

--Cmd
opt.showmode = false
opt.showcmd = false
opt.errorbells = false
opt.cmdheight = 1
opt.wildmenu = true
opt.laststatus = 2
opt.completeopt = {'menuone','longest'}
opt.pumheight = 15
opt.shortmess = opt.shortmess + 'c'
opt.statusline = "%f %m %w %= %l:%c"


--Term
opt.splitbelow = true
opt.splitright = true
opt.clipboard = {'unnamedplus','unnamed'}

--Search
opt.showmatch = true
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true

--Tabs
opt.smartindent = true
opt.tabstop = 2
opt.expandtab = true
opt.softtabstop = 2
opt.shiftwidth = 2

--Folds
opt.foldenable = true
opt.foldmethod = 'syntax'
opt.foldnestmax = 100
opt.foldlevelstart = 99

--Misc
opt.list = true
opt.listchars = {tab = '▸ ', trail = '·'}
opt.formatoptions = opt.formatoptions - 'cro'
opt.hidden = true
opt.timeoutlen = 10
opt.autochdir = false

--Backups
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true

cmd[[au TextYankPost * silent! lua vim.highlight.on_yank({higroup = "Search", timeout = 2200})]]

require('utils.disabled')
require('utils.au')
