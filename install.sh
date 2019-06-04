#!/bin/bash

xcode-select --install

# Check that Homebrew is installed and install if not
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash


# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade --all

# Install my brew packages
brew install \
    autoenv \
    autojump \
    fd \
    lsd \
    macvim \
    pyenv \
    ripgrep \
    zsh


# Install cask
brew tap phinze/homebrew-cask

# Install desired cask packages
brew cask install caffeine
brew cask install dropbox
brew cask install flux
brew cask install firefox
brew cask install imageoptim
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc

# Remove brew cruft
brew cleanup

# Remove cask cruft
brew cask cleanup
