vim.o.lazyredraw = true -- Don't redraw easily
vim.o.ttyfast = true -- Performance related
vim.o.updatetime = 250 -- Editor update time in ms
vim.o.mouse = 'nv' -- enable mouse in normal and visual
vim.o.encoding ='utf-8'

-- Theme Settings
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.cmd([[colorscheme tokyonight]])

-- configs
vim.o.termguicolors = true
vim.o.syntax = 'enable'
vim.o.background = 'dark'

vim.o.filetype = 'on'
vim.o.number = 'on'
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ruler = true
vim.o.scrolloff = 6
vim.o.sidescrolloff = 6
vim.o.nowrap = true
vim.o.lazyredraw = true

-- Cmd
vim.o.noshowmode = true
vim.o.noshowcmd = true
vim.o.noerrorbells = true
vim.o.cmdheight = 1
vim.o.wildmenu = true
vim.o.laststatus = 2
vim.o.completeopt = 'menuone,longest'
vim.o.pumheight = 15 -- Set the pumheight to 15 because its too small :(
vim.o.shortmess += 'c'

-- Term
vim.o.splitbelow='splitright'
vim.o.clipboard='unnamedplus,unnamed'

-- Search
vim.o.showmatch = true
vim.o.incsearch = true
vim.o.nohlsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true

-- Tabs
vim.o.filetype = 'indent','on'
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- Folds
vim.o.foldenable = true
vim.o.foldmethod = 'syntax'
vim.o.foldnestmax = 100
vim.o.foldlevelstart = 99

-- Misc
vim.o.formatoptions -= cro
vim.o.hidden = true
vim.o.updatetime = 200

-- Backups
vim.o.nobackup = true
vim.o.nowritebackup = true
vim.o.noswapfile = true
vim.o.undofile = true

vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank({higroup = "Search", timeout = 2200})]])
