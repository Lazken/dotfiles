# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/default"
session_root ~

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "brambo"; then
  window_root "~"
  new_window "local"
  
  window_root "~/repos/vlaanderen"
  new_window "VO"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/athumi"
  new_window "ATHUMI"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/bullsi"
  new_window "Bullsi"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/noro"
  new_window "Noro"
  run_cmd "nvim"
  split_v 20
  select_pane 1
  split_h 40
  run_cmd "k9s"
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
