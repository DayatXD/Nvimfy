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
