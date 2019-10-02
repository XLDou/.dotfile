ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.vim ~/.vim
ln -sf ~/.dotfiles/.emacs ~/.emacs
ln -sf ~/.dotfiles/.emacs.d/ ~/.emacs.d
ln -sf ~/.dotfiles/.ctags ~/.ctags

mkdir -p ~/.vim/syntax/
touch -a ~/.vim/syntax/c.vim
ln -sf ~/.dotfiles/.vim/syntax/c.vim ~/.vim/syntax/c.vim
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

