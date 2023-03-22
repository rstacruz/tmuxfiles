#!/usr/bin/env bash
mkdir -p ~/.cache/tmux
state_file="$HOME/.cache/tmux/theme_state"
state="$(cat $state_file)"

if [[ "$state" == "verbose" ]]; then
	source "$HOME/.config/tmux/modes/minimal.sh"
	echo "minimal" >"$state_file"
else
	source "$HOME/.config/tmux/modes/verbose.sh"
	echo "verbose" >"$state_file"
fi
