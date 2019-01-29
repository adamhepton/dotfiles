#!/bin/bash
DOTFILESREPO='git@bitbucket.org:pr0x/dotfiles.git'
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

source "$HOME/.brew/brew-helpers.sh"
"$HOME/.brew/brew-install.sh"

zsh
chsh -s $(which zsh)

echo "Basic install complete."
