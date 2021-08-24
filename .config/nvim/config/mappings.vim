" maps.vim
" jun 18
" :verbose imap <tab> to make sure that your keymap has taken effect

" source .vimrc
noremap <leader>r :source $MYVIMRC<cr>

" indent
noremap <tab><tab> gg=G <c-o><c-o>:w<cr>

" disable highlight
nnoremap <silent> <esc><esc> :noh<cr><esc>

" saving
inoremap <silent> <c-s>     <c-o>:w<cr>
noremap  <silent> <c-s>          :w<cr>
vnoremap <silent> <c-s>     <c-c>:w<cr>
" quit
inoremap <c-q> <c-o>ZZ
nnoremap <c-q>      ZZ
vnoremap <c-q> <c-c>ZZ
" close buffer
inoremap <silent> <c-w> <c-o>:bd<cr>
nnoremap <silent> <c-w>      :bd<cr>
vnoremap <silent> <c-w> <c-c>:bd<cr>

" move to the next buffer
nmap <silent> <tab>l :bnext<cr>
" move to the previous buffer
nmap <silent> <tab>h :bprevious<cr>

" enable folding with the spacebar
nnoremap <space> za
nnoremap zm zM
nnoremap zr zR

" condense the empty lines into single lines
nnoremap <leader>g :%!cat -s<cr>

" END
