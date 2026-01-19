#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"

export EDITOR=nvim
export K9S_EDITOR=nvim
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
