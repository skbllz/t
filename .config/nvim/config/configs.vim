" configs.vim
" jun 18

" disable startup message
set shortmess+=I
" show the search count
set shortmess-=S
" enable folding
set foldmethod=indent
" set foldmethod=syntax
set foldnestmax=2
set foldlevelstart=99
let go_fold=1                 " Go
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
" show status line
set laststatus=2
" make it obvious where 80 characters is
set colorcolumn=80
" don't wrap text
set nowrap
" use unix as the standard file type
set ffs=unix,dos,mac
" load ftplugins and indent files
set autoindent
set pastetoggle=<f5>
" omni completion
set omnifunc=syntaxcomplete#Complete
" style
set number
syntax on
highlight BadWhitespace ctermbg=red guibg=red
set hidden
" don't duplicate an existing open buffer
set switchbuf=useopen
" enhanced command line completion
set wildmenu
set wildmode=full
" reload files changed outside automatically
set autoread
" store lots of :cmdline history
set history=500
" show incomplete cmds down the bottom
set showcmd
" show current mode down the bottom
set showmode
" <esc> work faster
set ttimeoutlen=50
" shows 5 lines above/below the cursor
set scrolloff=5
" highlight the current line
set cursorline
" backup off
set nobackup
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class,*.a,*.o,*.so,*.pyc,*.jpg,*.jpeg,*.png,*.gif,*.pdf,*.git
" not word dividers
set iskeyword+=_,$,@,%,#
" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" faster readraws
set lazyredraw
set ttyfast
" all numerals as decimal
set nrformats=
" shell
set shell=/usr/bin/zsh
" vim-go
set autowrite

" END
