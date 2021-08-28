# Setup fzf
# ---------
if [[ ! "$PATH" == */home/t/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/t/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/t/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/t/.fzf/shell/key-bindings.zsh"
