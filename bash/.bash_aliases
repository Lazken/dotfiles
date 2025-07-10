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
