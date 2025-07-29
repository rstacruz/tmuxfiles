#!/usr/bin/env bash
icon_active="󰇊"
icon_inactive="󱅊"
icon_zoom="󰊓"
tmux set -g status-style 'fg=colour8,bg=colour234'
tmux set -g pane-border-style "fg=colour8"
tmux set -g pane-active-border-style "fg=colour4"
tmux setw -g window-status-separator '#[fg=colour236]  / '
tmux setw -g window-status-current-format " #{s|1|#[fg=colour1]$icon_zoom|;s|0|$icon_active|:window_zoomed_flag}#[fg=colour3] #W"
tmux setw -g window-status-format "#[fg=colour8] $icon_inactive #W"
tmux set -g status-left '#[bg=colour236,fg=colour6]#{?#{==:#S,0},,  #S}  #[default] '
# ^ #{?#{==:#S,0}} = if the current session is 0, don't show the session number
tmux set -g status-right ' '
tmux set -g status-justify centre
