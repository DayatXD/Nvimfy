local g = vim.g
local call = vim.fn

--Use Space + c for useful menu
call['quickmenu#reset']()

g.quickmenu_padding_left = 3
g.quickmenu_padding_right = 3
g.quickmenu_ft_blacklist = {}
g.quickmenu_options = 'HL'

call['quickmenu#header']('')

call['quickmenu#append']("# Utility", '')
call['quickmenu#append']("Files", 'Telescope find_files', "Shows Directory and Files")
call['quickmenu#append']("Buffers", 'Buffers', "Shows Buffers")
call['quickmenu#append']("Theme", 'Colors', "Change Colorscheme")

call['quickmenu#append']("# Enchant", '')
call['quickmenu#append']("Indentline", "IndentBlanklineToggle", "Toggle IndentLine")
call['quickmenu#append']("Rainbow", "RainbowToggle", "Toggle Rainbow")
call['quickmenu#append']("Colorizer", "ColorizerToggle", "Toggle Color Previews")
call['quickmenu#append']("Line Numbers", "set nonu!", "Toggle Line Numbers")
call['quickmenu#append']("Spell Check", "set spell!", "Toggle Spell Check")
