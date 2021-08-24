# alias.zsh

setopt CORRECT # correct commands

# general
alias bc='bc -q'

alias cdf='cd $(fd -d5 --hidden | fzf)'
alias chmod='chmod -c'
alias chown='chown -c'
alias cp='nocorrect cp -i'
alias curl='curl -s'

alias df='df -kh'
alias dnf_list='dnf list installed'
alias du='du -kh'

alias fc='noglob fc'
alias find='noglob find'

alias gcc='nocorrect gcc'
alias gdb='gdb --quiet'
alias grep='grep --color=auto'

alias ln='nocorrect ln -i'
alias ls='ls -l   --color=auto --human-readable --group-directories-first --classify'
alias lsa='ls -lA --color=auto --human-readable --group-directories-first --classify'
alias lst='ls -lt --color=auto --human-readable --group-directories-first --classify'

alias man='sudo man'
alias make='make -j2'
alias mkdir='nocorrect mkdir -pv'
alias mount='mount -v'
alias mountiso='mount -o loop'
alias mv='nocorrect mv -iv'


alias p="$PAGER"
alias ping='ping -c 5'

alias rm='nocorrect rm -i'

# alias serv='find . -type f -name ".serverauth.*" -print0 | xargs -0 rm -f'
alias serv='find /home/t -type f -name "*.serverauth.*" -exec rm -f {} \;'
alias systemctl_disable='systemctl list-unit-files | grep disabled'
alias systemctl_enable='systemctl list-unit-files | grep enabled'
alias systemctl_exited='systemctl list-units --type service --state exited --no-legend'
alias systemctl_failed='systemctl list-units --type service --state failed --no-legend'
alias systemctl_running='systemctl list-units --type service --state running --no-legend'
alias systemctl_service='systemctl list-unit-files --type service --no-legend'

alias top=htop

alias vim='nvim `fzf`'
alias vi='nvim'

alias wget='wget -c'

alias wB='cd ~/Projects/bash/ && cd `fd  -d 1 | fzf`'
alias wC='cd ~/Projects/c/ && cd `fd  -d 1 | fzf`'
alias wG='cd ~/Projects/go/src/github.com/skbllz && cd `fd  -d 1 | fzf`'
alias wL='cd ~/Projects/linux/ && cd `fd  -d 1 | fzf`'
alias wN='cd ~/.config/nvim'

alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias xprop="xprop | awk '/WM_CLASS/{print $3}'"

# arduino
alias arduino-compile='arduino-cli compile --fqbn arduino:avr:uno'
alias arduino-install='arduino-cli lib install'
alias arduino-search='arduino-cli lib search'
alias arduino-sketch='arduino-cli sketch new'
alias arduino-upload='arduino-cli upload --port /dev/ttyACM0 --fqbn arduino:avr:uno'

# aria2c
alias aria2c='aria2c -c -x2'

# bmi
alias BMI='vi Projects/go/src/github.com/skbllz/bmi/data/BMI'

# docker
alias dockerCCA='function _(){ docker container rm -f $(docker container ls -aq); };_'
alias dockerCPN='docker container prune --force'
alias dockerICA='function _(){ docker image rm -f $(docker image ls -q); };_'
alias dockerIPN='docker image prune -f'
alias dockerVCA='function _(){ docker volume rm $(docker volume ls -q); };_'
alias dockerVPN='docker volume prune'

# flac
alias flac_to_mp3='for f in *.flac; do flac -cd "$f" | lame -b 320 - "${f%.*}".mp3; done'

# fzf
alias fzf='fzf --height 40%'

# git
alias Gclog='git log --pretty=oneline --abbrev-commit'
alias Git='git status -sb'

# gparted
alias gparted='xhost +local:; beesu gparted'

# netcat
alias netcat=ncat

# nmapfe
alias nmapfe='beesu nmapfe'

# openCPN
alias openCPN='flatpak run org.opencpn.OpenCPN'

# pos_install
alias pos_install='zsh ~/bin/pos_install'

# qutebrowser
alias qutebrowser='flatpak run org.qutebrowser.qutebrowser'

# tor
alias tor='sh -c "~/bin/tor/Browser/start-tor-browser --detach"'

# youtube
alias youtube='youtube-dl-parallel -j 5'

# end
