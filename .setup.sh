#!/bin/bash
DOTFILESREPO='git@github.com:adamhepton/dotfiles.git'
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
zsh "$HOME/.brew/brew-install.sh"

git clone https://github.com/robbyrussell/oh-my-zsh "$HOME/.oh-my-zsh"
git clone https://github.com/vim-syntastic/syntastic.git "$HOME/.vim/bundle/"
git clone https://github.com/vim-airline/vim-airline.git "$HOME/.vim/bundle/"
git clone https://github.com/tpope/vim-fugitive.git "$HOME/.vim/bundle/"
git clone https://github.com/sheerun/vim-polyglot.git "$HOME/.vim/bundle/"

echo "Basic install complete."
