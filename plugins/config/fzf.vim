let g:fzf_preview_window = ['up:80%:hidden', 'ctrl-/']
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
