#!/bin/bash
if [ ! -x /usr/local/bin/brew ]; then
	echo "installing homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "homebrew is installed"
fi

echo "Updating app lists"
brew update
brew upgrade

echo "Adding taps"
brew tap caryll/tap
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services
brew tap martido/brew-graph
brew tap sambadevi/powerlevel9k

echo "Adding formulae"
brew install brew-graph
brew install brotli
brew install c-ares
brew install coreutils
brew install curl-openssl
brew install exercism
brew install fontconfig
brew install freetype
brew install gd
brew install gdbm
brew install gettext
brew install git
brew install glib
brew install graphviz
brew install gron
brew install gts
brew install icu4c
brew install ilmbase
brew install imagemagick
brew install jansson
brew install jasper
brew install jemalloc
brew install jpeg
brew install jq
brew install libde265
brew install libev
brew install libevent
brew install libffi
brew install libheif
brew install libidn
brew install libidn2
brew install libmetalink
brew install libomp
brew install libpng
brew install libssh2
brew install libtiff
brew install libtool
brew install libunistring
brew install libyaml
brew install little-cms2
brew install lolcat
brew install mozjpeg
brew install ncurses
brew install netpbm
brew install nghttp2
brew install node
brew install oniguruma
brew install openexr
brew install openjpeg
brew install openldap
brew install openssl
brew install pcre
brew install pcre2
brew install powerlevel9k
brew install python
brew install readline
brew install rename
brew install rlwrap
brew install rtmpdump
brew install ruby
brew install shared-mime-info
brew install sqlite
brew install the_silver_searcher
brew install tig
brew install unrar
brew install webp
brew install wget
brew install wine
brew install x265
brew install xz
brew install yarn
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting

echo "Adding casks"
brew cask install android-studio
brew cask install boom
brew cask install discord
brew cask install docker
brew cask install font-firacode-nerd-font
brew cask install font-iosevka-nerd-font-mono
brew cask install hp-easy-start
brew cask install iterm2-nightly
brew cask install java
brew cask install lightworks
brew cask install obs
brew cask install skype
brew cask install sonos
brew cask install spotify
brew cask install visual-studio-code
brew cask install vivaldi
