
homerepo = "$HOME/dotfiles"

# [Vim]
cp $HOME/.vimrc                         $homerepo/vimrc

# [Emacs]
cp $HOME/.emacs                         $homerepo/emacs
cp $HOME/.emacs.d/ -r                   $homerepo/emacs.d

# [Bash]
cp $HOME/.bashrc                        $homerepo/bashrc
cp $HOME/.Xdefaults                     $homerepo/Xdefaults
cp $HOME/.xinitrc                       $homerepo/xinitrc

# [Subtle]
cp $HOME/.config/subtle/subtle.rb       $homerepo/subtle.rb

# [Moc]
cp $HOME/.moc/config                    $homerepo/mocconfig
cp $HOME/.moc/config/themes/theme       $homerepo/moctheme

# [conky]
cp $HOME/.conkyrc                       $homerepo/conkyrc

cp $HOME/.config/bashrun2/bashrun2.rc   $homerepo/bashrun2.rc
cp $HOME/.config/dunstrc                $homerepo/dunstrc

