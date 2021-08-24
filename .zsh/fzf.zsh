# setup fzf
# ---------
if [[ ! "$PATH" == */home/t/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/t/.fzf/bin"
fi

# auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/t/.fzf/shell/completion.zsh" 2> /dev/null

# key bindings
# ------------
source "/home/t/.fzf/shell/key-bindings.zsh"
# ------------

# fzf ripgrep config
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
  export FZF_DEFAULT_OPTS="-m --height 50% --layout=reverse --border --inline-info
  --preview-window=:hidden
  --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} ||
    cat {})) || ([[ -d {} ]] && (tree -C {} | less)) ||
    echo {} 2> /dev/null | head -200'
  --bind '?:toggle-preview'"
fi

# END
