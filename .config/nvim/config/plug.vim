" plug.vim
" mar 20

" automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" begin
call plug#begin(expand('~/.config/nvim/plugged'))

" arduino
Plug 'sudar/vim-arduino-syntax'
Plug 'sudar/vim-arduino-snippets'
Plug 'stevearc/vim-arduino'

" bash
Plug 'bash-lsp/bash-language-server'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'

" go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" pimp the bride
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'mkitt/tabline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'josa42/coc-docker'
Plug 'josa42/coc-sh'

" asynchronous execution library
Plug 'Shougo/vimproc.vim', {'do': 'make'}

" sintax
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'sheerun/vim-polyglot'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ide like
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'easymotion/vim-easymotion'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'

call plug#end()

" END
