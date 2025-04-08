DOTSPATH=$HOME/Documents/dotfiles

declare -A conf
conf["nvim"]="$HOME/.config/nvim"
conf["shell/bashrc"]="$HOME/.bashrc"
conf["waybar"]="$HOME/.config/waybar"
conf["qutebrowser"]="$HOME/.config/qutebrowser"
conf["sway"]="$HOME/.config/sway"

for org in "${!conf[@]}"; do
	dest="${conf[$org]}"
	if [ -e "$dest" ]; then
		echo "The config already exist ($dest)"
	else
		ln -s "$DOTSPATH/$org" $dest
		echo "Added config ($dest)"
	fi
done
