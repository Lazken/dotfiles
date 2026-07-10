# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/brambo"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "brambo"; then

  window_root "~/repos/rheumafinder/rf_mono"
  new_window "RF_MONO"
  run_cmd "nvim"
  split_h 10
  select_pane 1

  window_root "~/repos/rheumafinder/appliance"
  new_window "appliance"
  run_cmd "nvim"
  split_h 10
  select_pane 1

  window_root "~/repos/rheumafinder/infra.deploy"
  new_window "Infra Deploy"
  run_cmd "nvim"
  split_h 10
  select_pane 1

  window_root "~/repos/rheumafinder/infra.modules"
  new_window "Infra Modules"
  run_cmd "nvim"
  split_h 10
  select_pane 1

  window_root "~/dotfiles"
  new_window "Dotfiles"
  run_cmd "nvim"
  split_h 10
  select_pane 1

  select_window "Infra Deploy"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
