" fzf.vim
" Aug 2021

" mappings
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>

" fzf window will take almost full screen
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" changes file preview window to take 60% of the fzf window, will place 
" search bar on top with a bit of margin, will also color the preview 
" using the bat cli app 
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

" END
