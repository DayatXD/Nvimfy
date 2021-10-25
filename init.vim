"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● AyeSpacey
"   / ___ |___/ /      □ @ayesumit
"  /_/  |_/____/       ■ Nvim Configs
"●                 ●        
"____________________________________

"Vim Source"
so ~/.config/nvim/plugins/plug.vim
so ~/.config/nvim/plugins/config/startup.vim
so ~/.config/nvim/plugins/config/emmet.vim
so ~/.config/nvim/plugins/config/coc.vim
so ~/.config/nvim/plugins/config/quickmenu.vim
so ~/.config/nvim/settings/config.vim
so ~/.config/nvim/settings/mapping.vim
so ~/.config/nvim/settings/custom.vim

"Lua Source"
lua require('base')
lua require('bufline')
lua require('syntax')

"Auto install Missing Plugins"
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"   Written with  ❤️  by AyeSpacey
"          & Contributors
"-------------End-Of-File-----------
