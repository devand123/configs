echo "Copying current machine's nvim config + plugins"
cp -R ~/.config/nvim/lua ./nvim

echo "Copying current machine's tmux config"
cp -R ~/.config/tmux/tmux.conf ./tmux/tmux.conf

echo "Done, here are the changes:\n"
git diff
