dir = "$HOME/.dotfiles"

cp $HOME/.vimrc                         ${dir}/dotvimrc
cp $HOME/.emacs                         ${dir}/dotemacs
cp $HOME/.emacs.d/ -r                   ${dir}/dotemacs.d
cp $HOME/.bashrc                        ${dir}/dotbashrc
cp $HOME/.xinitrc                       ${dir}/dotxinitrc
cp $HOME/.Xdefaults                     ${dir}/dotXdefaults
cp $HOME/.config/subtle/subtle.rb       ${dir}/subtle.rb
cp $HOME/.moc/config                    ${dir}/mocconfig
cp $HOME/.moc/config/themes/theme       ${dir}/moctheme
cp $HOME/.conkyrc                       ${dir}/dotconkyrc
cp $HOME/.config/bashrun2/bashrun2.rc   ${dir}/bashrun2.rc
cp $HOME/.config/dunstrc                ${dir}/dunstrc

