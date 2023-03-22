#!/usr/bin/env bash
tmux set -g pane-border-style "fg=colour8"
tmux set -g pane-active-border-style "fg=colour4"
tmux setw -g window-status-separator ''
tmux setw -g window-status-current-format "#[fg=colour6] #{s|1|#[fg=colour1]Z|;s|0|●|:window_zoomed_flag}#[fg=colour6] #W "
tmux setw -g window-status-current-format "#[fg=colour6] #{s|1|#[fg=colour1]Z|;s|0|●|:window_zoomed_flag}#[fg=colour6]─#W"
tmux setw -g window-status-format "#[fg=colour8] ○ " #W
tmux set -g status-right ' '
tmux set -g status-left ' '
tmux set -g status-justify centre
tmux set -g status-position bottom
# hide when default
tmux set -g status-right ' #{?#{==:#S,default},,#S} '
