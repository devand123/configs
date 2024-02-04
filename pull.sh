timestamp=$(date +%s)

echo "Storing backup of existing configs: backups/$timestamp"
mkdir -p "./backups/$timestamp/nvim"
mkdir -p "./backups/$timestamp/tmux"
cp -R ~/.config/nvim/lua ./backups/$timestamp/nvim
cp -R ~/.config/tmux/tmux.conf ./backups/$timestamp/tmux/.

echo "Updating current machine configs for nvim"

nvimdir=~/.config/nvim

if [ -d "$nvimdir" ]; then
	cp -R ./nvim/. $nvimdir
else
	echo "The nvim directory does not exist, is it installed?"
fi

echo "Updating current machine configs for tmux"

tmuxdir=~/.config/tmux

if [ -d "$tmuxdir" ]; then
	cp -R ./tmux/. $tmuxdir
else
	echo "The tmux directory does not exist, is it installed?"
fi
