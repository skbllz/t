# environment.zsh

# path
declare -U path
path=( $HOME/bin
			 $HOME/bin/install
       $HOME/.local/bin
       $PATH
       .
)

export GREP_COLOR='37;45'
export LESS=X
export LS_OPTIONS='--color=yes'
export LSCOLORS=Gxfxcxdxbxegedabagacad
export TERM=screen-256color
export CLICOLOR=1
export BROWSER=firefox
export MANPAGER=$LESS
export SHELL=/usr/bin/zsh
export I3=~/.config/i3/config

# editor
export EDITOR=nvim
export VISUAL=nvim
export MYVIMRC=~/.config/nvim/init.vim
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# tell programs to pass output through 'less' instead of 'more'
export PAGER=less

# go
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GODEBUG=netdns=cgo # force cgo resolver

# mongodb
export MONGO_URI="mongodb://admin:admin@localhost:27017/test?authSource=admin"
export MONGO_DATABASE=demo

# END
