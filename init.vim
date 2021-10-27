"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● AyeSpacey
"   / ___ |___/ /      □ @ayesumit
"  /_/  |_/____/       ■ Nvim Configs
"●                 ●        
"____________________________________

" Speed Up Nvim"
" lua require('utils.disabled')

"Vim Source"
so ~/.config/nvim/plugins/plug.vim
so ~/.config/nvim/settings/config.vim
so ~/.config/nvim/settings/mapping.vim
so ~/.config/nvim/settings/user.vim
so ~/.config/nvim/plugins/config/startup.vim

"Lua Source"
lua require('base')
lua require('bufline')
lua require('syntax')
lua require('lsp')

"Loads All Configs from plugins/config folder
for f in split(glob('~/.config/nvim/plugins/config/*.vim'), '\n')
    exe 'source' f
endfor

"Auto install Missing Plugins"
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"   Written with  ❤️  by AyeSpacey
"          & Contributors
"-------------End-Of-File-----------
