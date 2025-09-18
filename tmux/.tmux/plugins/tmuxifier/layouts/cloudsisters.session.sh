# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/default"
session_root ~

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "cloudsisters"; then

  window_root "~"
  new_window "local"

  window_root "~/dotfiles"
  new_window "dotfiles"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/lily58"
  new_window "ZMK"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/cloudsisters"
  new_window "CloudSisters"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  # Create a new window inline within session layout definition.
  #new_window "misc"

  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
