# dotfiles
Dotfiles currently contains vim and tmux files. Also a virtualbox script to create symlinks of shared folders.

vimrc uses vim-plug which requires running:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```    

tmux config use tpm whis requires running:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
