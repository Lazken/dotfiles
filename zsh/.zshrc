eval "$(starship init zsh)"
autoload -Uz compinit
compinit
eval "$(uv generate-shell-completion zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export EDITOR=nvim
export K9S_EDITOR=nvim
. ~/.zsh_openai_api

alias nv='nvim'
alias vi='nvim'
alias vim='nvim'
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias vial='sudo Vial-v0.7.1-x86_64.AppImage'
alias ls='ls -lrt'
#Open tmux default session
alias letsgo='tmuxifier load-session cloudsisters'

#functions
awp () {
  export AWS_PROFILE=$1
  export AWS_DEFAULT_PROFILE=$1
  echo "AWS profile is now '$1'"
  aws sts get-caller-identity || if [ $? = 255 ]; then aws sso login; fi 
}

awl () {
  aws configure list-profiles
}
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/brambo/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Yazi exit to selected directory, q to quit into chosen dir, Q to quit without changing dir
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Fuzzyfind directory and open nvim in this directory
function cdnvim() {
  local selected_dir
  selected_dir=$(fd -t d . | fzf +m --height 50% --preview 'tree -C {}')
  if [[ -n "$selected_dir" ]]; then
    cd "$selected_dir" && nvim || return 1
  fi
}

#Fuzzyfind directory and cd to this directory
function fdf() {
  local selected_dir
  selected_dir=$(fd -t d . | fzf +m --height 50% --preview 'tree -C {}')
  if [[ -n "$selected_dir" ]]; then
    cd "$selected_dir" || return 1
  fi
}
