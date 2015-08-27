link: tpm
	ln -nfs "`pwd -LP`" ~/.tmux
	ln -nfs "`pwd -LP`"/tmux.conf ~/.tmux.conf

tpm:
	mkdir -p plugins
	git clone https://github.com/tmux-plugins/tpm ./plugins/tpm
