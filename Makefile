link: tpm
	if [ ! . -ef ~/.tmux ]; then ln -nfs "`pwd -LP`" ~/.tmux; fi
	ln -nfs "`pwd -LP`"/tmux.conf ~/.tmux.conf

tpm:
	@if [ ! -d ./plugins/tpm ]; then \
		mkdir -p plugins; \
		git clone https://github.com/tmux-plugins/tpm ./plugins/tpm; \
		echo "\n\033[32;1m→ NOTE:\033[0m Reload tmux and press prefix+I to install plugins."; \
		echo "  (or use 'make install')"; \
	fi

install:
	tmux source ~/.tmux.conf
	~/.tmux/plugins/tpm/bindings/update_plugins
