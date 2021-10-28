require('plugins.ui.startify.lua')
require('plugins.ui.menu.lua')

local cmd = vim.cmd
local g = vim.g

g.move_key_modifier = 'C'

g.indent_blankline_enabled = false
g.indent_blankline_filetype_exclude = ['help', 'startify', 'dashboard']

g.cursorline_timeout = 2000
