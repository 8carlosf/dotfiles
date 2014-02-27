dir = "~/.dotfiles"

cp ~/.vimrc			${dir}/dotvimrc
cp ~/.emacs			&{dir}/dotemacs
cp -r ~/.emacs.d/		&{dir}/dotemacs.d
cp ~/.bashrc			&{dir}/dotbashrc
cp ~/.xinitrc			&{dir}/dotxinitrc
cp ~/.Xdefaults			&{dir}/dotXdefaults
cp ~/.config/subtle/subtle.rb	&{dir}/subtle.rb
cp ~/.moc/config		&{dir}/mocconfig
cp ~/.moc/config/themes/theme	&{dir}/moctheme
cp ~/.conkyrc			&{dir}/dotconkyrc
