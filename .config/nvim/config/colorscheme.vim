" colorscheme.vim
" aug 21

silent! colorscheme gruvbox-material

set background=dark

let g:gruvbox_contrast_dark_='hard'
let g:gruvbox_material_background = 'hard'

" let g:airline_theme = 'gruvbox_material'

au FileType gitcommit,gitrebase let g:gutentags_enabled=0
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
