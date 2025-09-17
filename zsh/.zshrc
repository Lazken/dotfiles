eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export EDITOR=nvim
export K9S_EDITOR=nvim

alias nv='nvim'
alias vi='nvim'
alias vim='nvim'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias vial='sudo Vial-v0.7.1-x86_64.AppImage'
alias ls='ls -lrt'
#Open tmux default session
alias letsgo='tmux attach-session -t default || tmux new-session -s default'

#functions
awp () {
  export AWS_PROFILE=$1
  export AWS_DEFAULT_PROFILE=$1
  echo "AWS profile is now '$1'"
  aws sts get-caller-identity
}

awl () {
  aws configure list-profiles
}
