
homerepo = "$HOME/dotfiles"

# [Vim]
cp $HOME/.vimrc                         $homerepo/vimrc

# [Emacs]
cp $HOME/.emacs                         $homerepo/emacs
cp -r $HOME/.emacs.d/                   $homerepo/emacs.d

# [Bash]
cp $HOME/.bashrc                        $homerepo/bashrc
cp $HOME/.Xdefaults                     $homerepo/Xdefaults

# [Xorg]
cp $HOME/.xinitrc                       $homerepo/xinitrc

# [Subtle]
cp $HOME/.config/subtle/subtle.rb       $homerepo/subtle.rb

# [Moc]
cp $HOME/.moc/config                    $homerepo/mocconfig
cp $HOME/.moc/config/themes/theme       $homerepo/moctheme

# [Conky]
cp $HOME/.conkyrc                       $homerepo/conkyrc

# [Bashrun2]
cp $HOME/.config/bashrun2/bashrun2.rc   $homerepo/bashrun2.rc

# [dunstrc]
cp $HOME/.config/dunstrc                $homerepo/dunstrc

