link: tpm
	ln -nfs "`pwd -LP`" ~/.tmux
	ln -nfs "`pwd -LP`"/tmux.conf ~/.tmux.conf

tpm:
	@if [ ! -d ./plugins/tpm ]; then \
		mkdir -p plugins; \
		git clone https://github.com/tmux-plugins/tpm ./plugins/tpm; \
		echo "\n\033[32;1m→ NOTE:\033[0m Be sure to hit prefix + I to install tmux plugins."; \
	fi
