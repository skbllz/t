# history.zsh

HISTFILE="$HOME/.zhistory"
HISTSIZE=10000000
SAVEHIST=10000000

setopt BANG_HIST                 # treat the '!' character specially during expansion
setopt EXTENDED_HISTORY          # write the history file in the ":start:elapsed;command" format
setopt INC_APPEND_HISTORY        # write to the history file immediately, not when the shell exits
setopt SHARE_HISTORY             # share history between all sessions
setopt HIST_EXPIRE_DUPS_FIRST    # expire duplicate entries first when trimming history
setopt HIST_IGNORE_DUPS          # don't record an entry that was just recorded again
setopt HIST_IGNORE_ALL_DUPS      # delete old recorded entry if new entry is a duplicate
setopt HIST_FIND_NO_DUPS         # do not display a line previously found
setopt HIST_IGNORE_SPACE         # don't record an entry starting with a space
setopt HIST_SAVE_NO_DUPS         # don't write duplicate entries in the history file
setopt HIST_REDUCE_BLANKS        # remove superfluous blanks before recording entry
setopt HIST_VERIFY               # don't execute immediately upon history expansion
