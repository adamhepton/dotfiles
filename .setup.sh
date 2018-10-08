#!/bin/zsh
DOTFILESREPO='https://bitbucket.org/pr0x/dotfiles.git'
git clone --bare "$DOTFILESREPO" "$HOME/.cfg"
function config {
  $(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files.";
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

chsh -s $(which zsh)

source .brew/brew-helpers.sh
echo -n "Would you like to install all items from .brew/brew-install.sh?: (y/N)"
read -n 1 DOINSTALL
if [ "$DOINSTALL" -eq "Y" ] || [ "$DOINSTALL" -eq "y" ] ; then
  ${DOTBREW}/brew-install.sh
fi

echo -n "Would you like to build .brew/brew-install.sh based on your existing config?: (y/N)"
read -n 1 DOBUILD
if [ "$DOBUILD" -eq "Y" ] || [ "$DOBUILD" -eq "y" ] ; then
  update-brew-script
fi

echo "Basic install complete."
