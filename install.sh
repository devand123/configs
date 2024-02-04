echo "Installing TPM"
if [ -d "~/.tmux/plugins/tpm" ]; then
	echo "TPM already installed"
else
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins
fi
