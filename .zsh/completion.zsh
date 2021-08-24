# completion.zsh

setopt COMPLETE_IN_WORD    # complete from both ends of a word
setopt ALWAYS_TO_END       # move cursor to the end of a completed word
setopt PATH_DIRS           # perform path search even on command names with slashes
setopt AUTO_MENU           # show completion menu on a succesive tab press
setopt AUTO_LIST           # automatically list choices on ambiguous completion
setopt AUTO_PARAM_SLASH    # if completed parameter is a directory, add a trailing slash
unsetopt MENU_COMPLETE     # do not autoselect the first completion entry
unsetopt FLOW_CONTROL      # disable start/stop characters in shell editor

# treat these characters as part of a word
WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

### :completion:function:completer:command:argument:tag
# get a bit more information when performing a completion
zstyle ':completion:*:*:*:*:*' menu select format
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages'     format ' %F{purple}-- %d --%f'
zstyle ':completion:*:warnings'     format ' %F{red}-- no matches --%f'

# fuzzy match mistyped completions
zstyle ':completion:*' completer _expand _complete _correct

# increase the number of errors based on the length of the typed word
zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ignore multiple entries
zstyle ':completion:*:(less|rm|kill|diff|vi):*' ignore-line yes
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# handling lots of matches
zmodload zsh/complist
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
