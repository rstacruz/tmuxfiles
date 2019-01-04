default:
	@echo "Usage:"
	@echo "  Type 'make link' to link files to ~/.config,"
	@echo "  then type 'make install' to install."
	@echo
	@echo "Makefile targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

link: tpm ## Links tmux.conf to ~/.tmux.conf
	if [ ! . -ef ~/.tmux ]; then ln -nfs "`pwd -LP`" ~/.tmux; fi
	ln -nfs "`pwd -LP`"/tmux.conf ~/.tmux.conf

tpm:
	@if [ ! -d ./plugins/tpm ]; then \
		mkdir -p plugins; \
		git clone https://github.com/tmux-plugins/tpm ./plugins/tpm; \
		echo "\n\033[32;1m→ NOTE:\033[0m Reload tmux and press prefix+I to install plugins."; \
		echo "  (or use 'make install')"; \
	fi

install: ## Reloads tmux and installs tpm plugins
	tmux source ~/.tmux.conf
	~/.tmux/plugins/tpm/bindings/update_plugins
