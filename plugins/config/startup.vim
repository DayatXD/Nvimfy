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
         \ 'ver: 2.1 | lsp: coc',
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
        \ { 'z': '~/.zshrc' },
        \ { 'i': '~/.config/nvim/init.vim' },
        \ '~/storage/shared/',
        \ ]
let g:startify_commands = [
        \ {'f': ['Files', ':Files']},
        \ {'c': ['Colors', ':Colors']},
        \ ]

let g:startify_enable_special = 0
let g:startify_padding_left = 2
 

let g:move_key_modifier = 'C'


let g:indent_blankline_enabled = v:false
let g:indent_blankline_filetype_exclude = ['help', 'startify']


let g:cursorline_timeout = 2000
