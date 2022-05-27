#!/bin/bash
if [ ! -x /opt/homebrew/bin/brew ]; then
	echo "installing homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "homebrew is installed"
fi

echo "Updating app lists"
brew update
brew upgrade

echo "Adding taps"
brew tap caryll/tap
brew tap gcenx/wine
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/services
brew tap martido/graph
brew tap sambadevi/powerlevel9k

echo "Adding formulae"
brew install aom
brew install apr
brew install apr-util
brew install autoconf
brew install bdw-gc
brew install brotli
brew install c-ares
brew install ca-certificates
brew install cairo
brew install cmake
brew install coreutils
brew install curl
brew install docbook
brew install docbook-xsl
brew install docker
brew install flac
brew install fontconfig
brew install freetype
brew install fribidi
brew install gd
brew install gdbm
brew install gdk-pixbuf
brew install gettext
brew install ghostscript
brew install giflib
brew install git
brew install glib
brew install gmp
brew install gnu-getopt
brew install gnutls
brew install gobject-introspection
brew install gphoto2
brew install graphene
brew install graphite2
brew install graphviz
brew install gron
brew install gst-plugins-base
brew install gstreamer
brew install gts
brew install guile
brew install handbrake
brew install harfbuzz
brew install icu4c
brew install ilmbase
brew install imagemagick
brew install imath
brew install jansson
brew install jasper
brew install jbig2dec
brew install jemalloc
brew install jpeg
brew install jpeg-xl
brew install jq
brew install krb5
brew install lame
brew install leptonica
brew install libarchive
brew install libass
brew install libavif
brew install libb2
brew install libbluray
brew install libcbor
brew install libde265
brew install libev
brew install libevent
brew install libexif
brew install libffi
brew install libfido2
brew install libgphoto2
brew install libheif
brew install libidn
brew install libidn2
brew install liblqr
brew install libmetalink
brew install libnghttp2
brew install libogg
brew install libomp
brew install libpng
brew install libpthread-stubs
brew install libraw
brew install librsvg
brew install libsamplerate
brew install libsndfile
brew install libsoxr
brew install libssh2
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libusb-compat
brew install libuv
brew install libvidstab
brew install libvmaf
brew install libvorbis
brew install libvpx
brew install libx11
brew install libxau
brew install libxcb
brew install libxdmcp
brew install libxext
brew install libxrender
brew install libyaml
brew install little-cms2
brew install llvm
brew install lolcat
brew install lz4
brew install lzo
brew install m4
brew install molten-vk
brew install mozjpeg
brew install mpdecimal
brew install mysql
brew install ncurses
brew install netpbm
brew install nettle
brew install nghttp2
brew install node
brew install oniguruma
brew install opencore-amr
brew install openexr
brew install openjdk
brew install openjpeg
brew install openldap
brew install openssl@1.1
brew install opus
brew install orc
brew install p11-kit
brew install pango
brew install pcre
brew install pcre2
brew install pixman
brew install pkg-config
brew install popt
brew install powerlevel9k
brew install protobuf
brew install python@3.10
brew install python@3.8
brew install python@3.9
brew install readline
brew install rename
brew install rlwrap
brew install rtmpdump
brew install rubberband
brew install ruby
brew install scons
brew install sdl2
brew install shared-mime-info
brew install six
brew install smartmontools
brew install snappy
brew install speex
brew install sqlite
brew install swig
brew install tcl-tk
brew install tesseract
brew install the_silver_searcher
brew install theora
brew install tig
brew install unbound
brew install utf8proc
brew install webp
brew install wget
brew install x264
brew install x265
brew install xmlto
brew install xorgproto
brew install xvid
brew install xz
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install zstd
brew install gimp
brew install hp-easy-start
brew install keyboard-cleaner
brew install obs
brew install spotify
brew install visual-studio-code
