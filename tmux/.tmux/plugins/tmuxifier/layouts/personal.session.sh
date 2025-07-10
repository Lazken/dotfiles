# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/default"
session_root ~

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "personal"; then
  window_root "~"
  new_window "local"
  
  window_root "~/repos/mistborn"
  new_window "VO"
  run_cmd "nvim --listen ./godothost\`\`"
  split_v 20
  select_pane 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
