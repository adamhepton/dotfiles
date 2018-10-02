#!/bin/bash
git clone --bare https://bitbucket.org/pr0x/dotfiles.git $HOME/.cfg
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
${HOME}/.brew/brew-install.sh
echo "Basic install complete."
