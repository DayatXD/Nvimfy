let g:nvimfy_header = [
         \'',
         \'   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
         \'    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
         \'          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
         \'           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
         \'          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
         \'   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
         \'  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
         \' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
         \' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
         \'      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
         \'       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
         \'',
        \]
let g:nvimfy_footer = [
         \ '',
         \ 'ver: 2.5 | lsp: coc',
         \ '',
         \ ' [ Happy Coding! ]',
         \]

let g:startify_custom_header = startify#center(g:nvimfy_header)
let g:startify_custom_footer = startify#center(g:nvimfy_footer)

let g:startify_lists = [
        \ { 'type': 'bookmarks'},
        \ { 'type': 'commands'},
        \ ]
let g:startify_bookmarks = [
        \ { 'b': '~/.bashrc' },
        \ { 'i': '~/.config/nvim/settings/config.vim' },
        \ ]
let g:startify_commands = [
        \ {'f': ['Files', ':Telescope find_files']},
        \ {'c': ['Colors', ':Telescope colorscheme']},
        \ ]

let g:startify_enable_special = 0
let g:startify_padding_left = 2
 

let g:move_key_modifier = 'C'


let g:indent_blankline_enabled = v:false
let g:indent_blankline_filetype_exclude = ['help', 'startify']


let g:cursorline_timeout = 2000


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
