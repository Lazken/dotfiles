#!/usr/bin/env bash

cd $(tmux run "echo #{pane_current_path}")
url=$(git remote get-url origin) 

if [[ $url == git@* ]]; then
    url="${url#git@}"
    url="${url/:/\/}" 
    url="${url%.git}" 
    url="https://$url/pulls"
fi
xdg-open "$url" > /dev/null
