
homerepo="$HOME/dotfiles"
cd $homerepo

# [Vim]
ln -sf $homerepo/vim/vimrc $HOME/.vimrc

# [Emacs]
ln -sf $homerepo/emacs/emacs $HOME/.emacs
ln -sf $homerepo/emacs/emacs.d $HOME/.emacs.d

# [Bash]
ln -sf $homerepo/bash/bashrc $HOME/.bashrc 
ln -sf $homerepo/bash/bash_profile $HOME/.bash_profile

# [Xorg]
ln -sf $homerepo/xorg/xinitrc $HOME/.xinitrc
ln -sf $homerepo/xorg/Xresources $HOME/.Xresources

