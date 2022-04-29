default:
	@echo "Makefile targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

install: link tpm reload ## Install ~/.tmux.conf and tmux plugin manager [alias: i]
	@echo ""
	@echo "=> Done! Use 'prefix-I' in Tmux to install plugins."

link: # Install ~/.tmux.conf
	rm -f ~/.tmux.conf
	echo "source $(PWD)/tmux.conf" > ~/.tmux.conf

tpm: plugins/tpm # Install tmux plugin manager
plugins/tpm:
	mkdir -p plugins
	git clone https://github.com/tmux-plugins/tpm plugins/tpm

reload: # Reload config
	if [[ -n "$$TMUX" ]]; then tmux source ~/.tmux.conf; fi

clean: ## Uninstall
	rm -rf plugins/tpm ~/.tmux.conf

i: install
