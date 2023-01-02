#!/usr/bin/env bash

# bullets only
tmux setw -g window-status-current-format "#[fg=8] ● "
tmux setw -g window-status-format "#[fg=9] ● "

# with name (#I for index)
tmux setw -g window-status-current-format "#[fg=8] ● #W "
tmux setw -g window-status-format "#[fg=9] ● #W "
tmux set -g status-position bottom
tmux set -g status-justify right
