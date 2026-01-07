# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/brambo"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "brambo"; then

  window_root "~/repos/rheumafinder/rf_mono"
  new_window "RF_MONO"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/rheumafinder/rfm_dso_tf_source"
  new_window "RFM_DSO_TF_SOURCE"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/repos/rheumafinder/data-platform"
  new_window "data-platform"
  run_cmd "nvim"
  split_v 20
  select_pane 1

  window_root "~/dotfiles"
  new_window "Dotfiles"
  run_cmd "nvim"
  split_v 20
  select_pane 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
