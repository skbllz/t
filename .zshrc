# .zshrc

# load and initialize the completion system ignoring insecure directories
autoload -Uz compinit && compinit -i

# source files (the order matters)
source "/home/t/.zsh/environment.zsh"
source "/home/t/.zsh/bindings.zsh"
source "/home/t/.zsh/completion.zsh"
source "/home/t/.zsh/history.zsh"
source "/home/t/.zsh/directory.zsh"
source "/home/t/.zsh/alias.zsh"
source "/home/t/.zsh/functions.zsh"
source "/home/t/.zsh/fzf.zsh"

# autoload zsh functions
autoload -Uz zmv
autoload -Uz zcalc

# manual prompt configuration (load colors and configure prompt)
autoload -U colors && colors

# prompt
if [ $(whoami) = "root" ] ; then
  PROMPT="%{$fg_bold[red]%} --> %{$reset_color%}"
  RPROMPT="%{$fg_bold[blue]%}[%{$reset_color%}%{$fg_bold[blue]%}
  \      %~%{$reset_color%}%{$fg_bold[blue]%}]%{$reset_color%}"
else
  #    PROMPT="%@%{$fg_bold[blue]%} --> %{$reset_color%}"
  #    RPROMPT="%{$fg_bold[blue]%}%~%{$reset_color%}"
  PROMPT="%{$fg_bold[blue]%} --> %{$reset_color%}"
  RPROMPT="%{$fg_bold[blue]%}[%{$reset_color%}%{$fg_bold[blue]%}
  \      %~%{$reset_color%}%{$fg_bold[blue]%}]%{$reset_color%}"
fi

# substitution in the prompt (parameter and arithmetic expansion)
setopt PROMPT_SUBST

# like vim behavior
bindkey -v
# needed for <C-s>
stty -ixon

# compile the completion dump, to increase startup speed
dump_file="$HOME/.zcompdump"
if [[ "$dump_file" -nt "${dump_file}.zwc" || ! -f "${dump_file}.zwc" ]]; then
  zcompile "$dump_file"
fi
unset dump_file

# END

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
