" terminal vim
" jul 21

" mappings
nnoremap <leader>t :terminal<CR>

" terminal
tnoremap <down>  <c-w>j
tnoremap <up>    <c-w>k
tnoremap <left>  <c-w>h
tnoremap <right> <c-w>l
" normal mode
nnoremap <down>  <c-w>j
nnoremap <up>    <c-w>k
nnoremap <left>  <c-w>h
nnoremap <right> <c-w>l

" terminal-mode-escape
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
" disable line numbers in terminal
autocmd TermOpen * setlocal nonumber norelativenumber

" END
