# Prox's Bodge Scripts to setup a new Mac

This is all based on using a bare git repo as the base for everything, as per original article at:
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

The main ingredients are:

  * Get Git - From https://git-scm.com/download/mac although we will most likely install via Homebrew after that, anyway
  * Fork this repo - remember to remove any SSH keys you no longer have access to, and add new ones.  If you clone directly from here, you're not going to be able to push any changes you make

To work with an existing Mac (or install on a new Mac):
  * Edit .setup.sh to point to your own remote dotfiles repo
  * Run .setup.sh.  This will:
    * Pull down the remote repo and set up the `config` alias so that you can make changes which can be pushed back to the repo;
    * Link any dotfiles and any helper scripts from the repo into ${HOME};
      *CAUTION!* If any dotfiles already exist in ${HOME}, they will be overwritten by the versions in the repo, and the originals moved into `${HOME}/.config-backup"`
    * (Optionally) install brew taps, formulae and casks based on the list held in the repo;
    * (Optionally) build the brew install list based on the installed taps, forumulae and casks on the Mac you are running the script on.
 
## Autoupdate on change

This repo includes overrides for `brew` so that if you add or remove anything (formulae, casks, taps) then it will rebuild the brew installation file that's called as part of setup, so that next time you come to build a Mac, it's as you were.
This has been written for zsh; it could have been written in a more portable way but I wrote it to work as I wanted it to, and I use zsh.
