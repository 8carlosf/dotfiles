
if [ "$#" != 2 ];then
	echo -e "Usage:   sh import.sh <type> <file/folder>\n";
	echo -e "This tool will *move* your config file to the dotfiles manager and also add the command to install.sh as a comment, so you need to manualy uncomment the lines.\n"
	echo -e "Example: sh import.sh bash   ~/.bashrc";
	exit 0;
fi

homerepo="$HOME/dotfiles"
tname=$1
fname=${2##*/}
fname=${fname#.}

mkdir -p $homerepo/$tname
mv $2 $homerepo/$tname/$fname
echo "mv $2 $homerepo/$tname/$fname"

exp=$(echo "s/\/home\/$USER/\$HOME/g")
lname=$(echo $2 | sed -e $exp)

echo -e "\n# [$tname]\n#ln -sf \$homerepo/$tname/$fname $lname" >> $homerepo/install.sh

