#!/usr/bin/env bash

is_light() {
  if [[ ! -f "~/.cache/wal/colors.json" ]]; then return 1; fi
  grep -q "\"background\": *\"#[efEF]" "~/.cache/wal/colors.json"
}

mode="$(if is_light; then echo "light"; else echo "dark"; fi)"
style="name"

# bullets only
# tmux setw -g window-status-current-format "#[fg=8] ● "
# tmux setw -g window-status-format "#[fg=9] ● "

# with name (#I for index)
name_style() {
  tmux setw -g window-status-separator ''
  tmux setw -g window-status-current-format "#[fg=8] ● #W "
  tmux setw -g window-status-format "#[fg=9] ● #W "
  tmux set -g status-right " #[fg=8]──  #S "
}

# pills
pills_style() {
  if true; then
    local activebg="#ddddff"
    local activefg="#000000"
    local inactivefg="#666699"
    local inactivebg="#eeeeff"
  else
    local activebg="#555577"
    local activefg="#ccccff"
    local inactivefg="#aaaadd"
    local inactivebg="#333333"
  fi
  tmux set -g pane-border-style "fg=$inactivefg"
  tmux set -g pane-active-border-style "fg=$activebg"
  tmux set -g status-right "  #[fg=$inactivebg]#S "
  tmux setw -g window-status-separator " "
  tmux setw -g window-status-current-format "#[fg=$activebg]#[fg=$activefg,bg=$activebg]  #W #[fg=$activebg,bg=default]"
  tmux setw -g window-status-format "#[fg=$inactivebg]#[fg=$inactivefg,bg=$inactivebg]  #W #[fg=$inactivebg,bg=default]"
}

case "$style" in
  pills) pills_style ;;
  name) name_style ;;
esac

tmux set -g status-position bottom
tmux set -g status-justify right
