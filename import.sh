
homerepo="$HOME/dotfiles"
cd $homerepo

# [Vim]
#cp -rp $HOME/.vimrc $homerepo/vimrc

# [Emacs]
mkdir -p $homerepo/emacs
cp -p $HOME/.emacs $homerepo/emacs/emacs
cp -rp $HOME/.emacs.d $homerepo/emacs/emacs.d

# [Bash]
#cp $HOME/.bashrc $homerepo/bashrc
#cp $HOME/.Xresources $homerepo/Xresources

# [Xorg]
#cp $HOME/.xinitrc $homerepo/xinitrc

# [Moc]
#cp $HOME/.moc/config $homerepo/mocconfig
#cp $HOME/.moc/config/themes/theme $homerepo/moctheme

# [Conky]
#cp $HOME/.conkyrc $homerepo/conkyrc

