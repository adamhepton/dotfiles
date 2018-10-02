# Prox's Bodge Scripts to setup a new Mac

This is all based on using a bare git repo as the base for everything, as per original article at:
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

The main ingredients are:

 * Get Git - From https://git-scm.com/download/mac although we will most likely install via Homebrew after that, anyway
 * Clone this repo - remember to remove any SSH keys you no longer have access to, and add new ones
 * Run .setup.sh - this will link any dotfiles and any helper scripts that have been written into ${HOME}
 
## Autoupdate on change

This repo includes overrides for `brew` so that if you add or remove anything (formulae, casks, taps) then it will rebuild the brew installation file that's called as part of setup, so that next time you come to build a Mac, it's as you were.

This has been written for zsh; it could have been written in a more portable way but I wrote it to work as I wanted it to, and I use zsh.