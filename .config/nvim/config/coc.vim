" coc.nvim
" jul 21


" extensions
let g:coc_global_extensions = [
                  \ 'coc-clangd',
                  \ 'coc-css',
                  \ 'coc-eslint',
                  \ 'coc-git',
                  \ 'coc-go',
                  \ 'coc-html',
                  \ 'coc-json',
                  \ 'coc-prettier',
                  \ 'coc-python',
                  \ 'coc-sh',
                  \ 'coc-snippets',
                  \ 'coc-sql',
                  \ 'coc-tsserver',
                  \ 'coc-yaml'
                  \]

" set configs
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=number

" maps
" <tab> to trigger completion and navigate to the next item
function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
                  \ pumvisible() ? "\<C-n>" :
                  \ <SID>check_back_space() ? "\<TAB>" :
                  \ coc#refresh()

" <CR> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, use: >
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" çç and ÇÇ to navigate diagnostics
nmap <silent> çç <Plug>(coc-diagnostic-prev)
nmap <silent> ÇÇ <Plug>(coc-diagnostic-next)
