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
brew tap sambadevi/powerlevel9k

echo "Adding formulae"
brew install aom
brew install brotli
brew install c-ares
brew install cairo
brew install coreutils
brew install curl
brew install curl-openssl
brew install exercism
brew install ffmpeg
brew install flac
brew install fontconfig
brew install freetype
brew install frei0r
brew install fribidi
brew install gd
brew install gdbm
brew install gettext
brew install giflib
brew install git
brew install glib
brew install gmp
brew install gnutls
brew install graphite2
brew install graphviz
brew install gron
brew install gts
brew install harfbuzz
brew install icu4c
brew install ilmbase
brew install imagemagick
brew install jansson
brew install jasper
brew install jemalloc
brew install jpeg
brew install jq
brew install lame
brew install leptonica
brew install libass
brew install libbluray
brew install libde265
brew install libev
brew install libevent
brew install libffi
brew install libheif
brew install libidn
brew install libidn2
brew install libmetalink
brew install libogg
brew install libomp
brew install libpng
brew install libsamplerate
brew install libsndfile
brew install libsoxr
brew install libssh2
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libvidstab
brew install libvorbis
brew install libvpx
brew install libyaml
brew install little-cms2
brew install lolcat
brew install lzo
brew install mozjpeg
brew install ncurses
brew install netpbm
brew install nettle
brew install nghttp2
brew install node
brew install oniguruma
brew install opencore-amr
brew install openexr
brew install openjpeg
brew install openldap
brew install openssl
brew install openssl@1.1
brew install opus
brew install p11-kit
brew install pcre
brew install pcre2
brew install pixman
brew install powerlevel9k
brew install python
brew install readline
brew install rename
brew install rlwrap
brew install rtmpdump
brew install rubberband
brew install ruby
brew install sdl2
brew install shared-mime-info
brew install snappy
brew install speex
brew install sqlite
brew install tesseract
brew install the_silver_searcher
brew install theora
brew install tig
brew install unbound
brew install unrar
brew install webp
brew install wget
brew install wine
brew install x264
brew install x265
brew install xvid
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
brew cask install gimp
brew cask install hp-easy-start
brew cask install iterm2-nightly
brew cask install java
brew cask install lightworks
brew cask install obs
brew cask install skype
brew cask install sonos
brew cask install spotify
brew cask install steam
brew cask install visual-studio-code
brew cask install vivaldi
