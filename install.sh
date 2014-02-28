
homerepo="$HOME/dotfiles"
cd $homerepo

# [vim]
ln -sf $homerepo/vim/vimrc $HOME/.vimrc

# [emacs]
ln -sf $homerepo/emacs/emacs $HOME/.emacs
ln -sf $homerepo/emacs/emacs.d $HOME/.emacs.d

# [bash]
ln -sf $homerepo/bash/bashrc $HOME/.bashrc 
ln -sf $homerepo/bash/bash_profile $HOME/.bash_profile

# [xorg]
ln -sf $homerepo/xorg/xinitrc $HOME/.xinitrc
ln -sf $homerepo/xorg/Xresources $HOME/.Xresources

# [ncmpcpp]
ln -sf $homerepo/ncmpcpp/ncmpcpp $HOME/.ncmpcpp

# [bspwm]
ln -sf $homerepo/bspwm/bspwm $HOME/.config/bspwm

# [sxhkd]
ln -sf $homerepo/sxhkd/sxhkd $HOME/.config/sxhkd

# [ncmpcpp]
#ln -sf $homerepo/ncmpcpp/ncmpcpp $HOME/.ncmpcpp
