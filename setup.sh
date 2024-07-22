#!/usr/bin/env bash

config_path="$HOME/.config/tmux"

echo "source $config_path/tmux.conf" >"$HOME/.tmux.conf"

if [[ ! -e "$config_path/plugins/tpm" ]]; then
  mkdir -p "$config_path/plugins/tpm"
  git clone https://github.com/tmux-plugins/tpm "$config_path/plugins/tpm"
fi

if [[ -n "${TMUX:-}" ]]; then
  tmux source ~/.tmux.conf
fi

echo ""
echo "=> Done! Use 'prefix-I' in Tmux to install plugins."
