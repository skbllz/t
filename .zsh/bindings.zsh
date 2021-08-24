# bindings.zsh

bindkey "^[[7~" beginning-of-line                              # Home
bindkey "^[[8~" end-of-line                                    # End
bindkey "^[[3~" delete-char                                    # Del
bindkey "^[[5~" history-beginning-search-backward              # PageUp
bindkey "^[[6~" history-beginning-search-forward               # PageDown
bindkey "^[[A"  up-line-or-history                             # Up Arrow
bindkey "^[[B"  down-line-or-history                           # Down Arrow
bindkey "^[Oc"  forward-word                                   # control + right arrow
bindkey "^[Od"  backward-word                                  # control + left arrow
bindkey "^H"    backward-kill-word                             # control + backspace
bindkey "^[[3^" kill-word                                      # control + delete
bindkey "^R"    history-incremental-pattern-search-backward    # control + r
bindkey "^S"    history-incremental-pattern-search-forward     # control + s
# completion in the middle of a line
bindkey '^i'    expand-or-complete-prefix
# In bash, the <C-x><C-e> keys are mapped to a function called 
# edit-and-execute-command .
# In zsh, there’s an equivalent function called edit-command-line , which 
# doesn’t have a default key mapping. to bind this function to <C-x><C-e> :
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
