#dotfiles

##Structure

You should keep this repo in the root of your home directory `~/dotfiles`.

Each folder, for example `xorg/` represents a group of related configs (I like to sort them by app, but you can group them by computer, distro, etc).

Inside the group files should keep the original directory tree and filenames.

You will need [GNU Stow](http://www.gnu.org/software/stow/) to manage your configs (Archlinux: `community/stow`).

##Importing new configs

If there is no group for the new config, you should create a new folder.

Paste the config in is folder.

Examples: 
```
[~/dotfiles]$ cp -r --parents /etc/pacman.conf pacman/

[~]$ cp -r --parents .config/compton.conf dotfiles/compton/

```

If you don't know the meaning of the above command check `man cp`.

##Managing

I recommend using Stow to farm the symlinks (read `man stow`).

By default the `stow` command will create symlinks for files in the parent directory of where you execute the command. So, assuming this repo is located at `~/dotfiles` and all the following commands are executed in that directory (otherwise you should checkout the flags `-d` and `-t` using `man stow`).

Suppose you want to install **vim** and **bash**, you simply do:

`stow -v vim bash`

and this will create all symlinks, otherwise stow will tell you why it couldn't create them (normally you have to delete some files that are in the place were the symlinks should go).


To install a config that doesn't reside in the `~`, for example the **pacman** config, you do:

`stow -vt / pacman`

Or if you want to install a config in `/root`, you do:

`stow -vt /root vim`

If you want to switch configs (for examples, if you have 2 vim configs, named **vim-min**, and **vim**):

`stow -vD vim-min`
`stow -v vim`

To finish, if you added a file to group and want to upgrade the symlinks without manually removing the instalation with `-D` and then installing again, you can use:

`stow -vR vim`


Please report any issues and suggestions. Thank you

