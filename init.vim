"●     ___   _____ ●
"     /   | / ___/     ○ Sumit Burman
"    / /| | \__ \      ● AyeSpacey
"   / ___ |___/ /      □ @ayesumit
"  /_/  |_/____/       ■ Nvim Configs
"●                 ●        
"____________________________________

so ~/.config/nvim/plugins/plug.vim
so ~/.config/nvim/settings/mapping.vim
so ~/.config/nvim/plugins/config/startup.vim
so ~/.config/nvim/plugins/config/emmet.vim
so ~/.config/nvim/plugins/config/coc.vim
so ~/.config/nvim/plugins/config/fzf.vim
so ~/.config/nvim/plugins/config/quickmenu.vim
so ~/.config/nvim/settings/config.vim

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

lua require('base')

lua require('bufline')

"   Written with  ❤️  by AyeSpacey
"-------------End-Of-File-----------
