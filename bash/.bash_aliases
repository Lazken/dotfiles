alias nv='nvim'
alias letsgo="tmuxifier load-session brambo"
alias letsathumi="tmuxifier load-session athumi"
alias letsgodot="tmuxifier load-session personal"
#alias bat="batcat"
alias inv='nvim $(fzf -m --preview="batcat --color=always {}")'
alias vial='sudo Vial-v0.7.1-x86_64.AppImage'


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
#
# Yazi exit to selected directory, q to quit into chosen dir, Q to quit without changing dir
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function cdnvim() {
  local selected_dir
  selected_dir=$(fd -t d . ~/ | fzf +m --height 50% --preview 'tree -C {}')
  if [[ -n "$selected_dir" ]]; then
    cd "$selected_dir" && nvim || return 1
  fi
}

function fdf() {
  local selected_dir
  selected_dir=$(fd -t d . ~/ | fzf +m --height 50% --preview 'tree -C {}')
  if [[ -n "$selected_dir" ]]; then
    cd "$selected_dir" || return 1
  fi
}
