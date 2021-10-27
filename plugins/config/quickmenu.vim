" Use Space + c for useful menu
call quickmenu#reset()

let g:quickmenu_padding_left = 0
let g:quickmenu_padding_right = 1
let g:quickmenu_ft_blacklist = []
let g:quickmenu_options = 'HL'

call quickmenu#header('')

call quickmenu#append("# Utility", '')
call quickmenu#append("Files", 'Telescope find_files', "Shows Directory and Files")
call quickmenu#append("Buffers", 'Telescope buffers', "Shows Buffers")
call quickmenu#append("Theme", 'Telescope colorscheme', "Change Colorscheme")
call quickmenu#append("Telescope", 'Telescope', "Telescope Tools")

call quickmenu#append("# Enchant", '')
call quickmenu#append("Indentline", "IndentBlanklineToggle", "Toggle IndentLine")
call quickmenu#append("Rainbow", "RainbowToggle", "Toggle Rainbow")
call quickmenu#append("Colorizer", "ColorizerToggle", "Toggle Color Previews")
call quickmenu#append("Line Numbers", "set nonu!", "Toggle Line Numbers")
call quickmenu#append("Spell Check", "set spell!", "Toggle Spell Check")
