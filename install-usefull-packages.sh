
# assume sudo
echo "Installing other common things"
apt-get update
apt-get install --force-yes --assume-yes \
	build-essential \
	autojump \
	tmux \
	vim
apt-get --force-yes --assume-yes dist-upgrade