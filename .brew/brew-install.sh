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

echo "Adding formulae"

echo "Adding casks"
