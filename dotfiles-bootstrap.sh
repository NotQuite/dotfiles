# $1 should be the dotfiles directory.
# Assumed to be `.` otherwise
BASE_DIR=${1:-"."}

curl --silent -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/0.10.0/plug.vim


for item in .vimrc .tmux.conf .gitconfig .custom.bashrc
do
    ln -s $BASE_DIR/$item ~/
done

# only do once
grep -vq ".custom.bashrc" ~/.bashrc && echo "source ~/.custom.bashrc" >> ~/.bashrc
touch ~/.hushlogin