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
brew upgrade 

# Install my brew packages
brew install \
    autoenv \
    autojump \
    bat \
    exa \
    fd \
    macvim \
    pyenv \
    ripgrep \
    zlib \
    zsh


# Install desired cask packages
brew cask install caffeine
brew cask install docker
brew cask install dropbox
brew cask install flux
brew cask install firefox
brew cask install font-firacode-nerd-font
brew cask install imageoptim
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install spectacle
brew cask install the-unarchiver
brew cask install transmission
brew cask install vim
brew cask install visual-studio-code
brew cask install vlc

# Remove brew cruft
brew cleanup

