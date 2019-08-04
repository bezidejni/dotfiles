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
    autojump \
    bat \
    direnv \
    exa \
    fd \
    fzf \
    pyenv \
    ripgrep \
    vim \
    zlib \
    zsh


# Install desired cask packages
brew cask install caffeine && \
brew cask install calibre && \
brew cask install docker && \
brew cask install dropbox && \
brew cask install firefox && \
brew cask install flux && \
brew cask install font-fira-code && \
brew cask install font-fira-mono-for-powerline && \
brew cask install font-firacode-nerd-font && \
brew cask install font-firacode-nerd-font-mono && \
brew cask install font-menlo-for-powerline && \
brew cask install google-cloud-sdk && \
brew cask install gpg-suite && \
brew cask install harvest && \
brew cask install imageoptim && \
brew cask install insomnia && \
brew cask install iterm2 && \
brew cask install kaleidoscope && \
brew cask install keybase && \
brew cask install macdown && \
brew cask install plex-media-server && \
brew cask install private-internet-access && \
brew cask install qlimagesize && \
brew cask install qlmarkdown && \
brew cask install skitch && \
brew cask install skype && \
brew cask install slack && \
brew cask install spectacle && \
brew cask install spotify && \
brew cask install the-unarchiver && \
brew cask install transmission && \
brew cask install visual-studio-code && \
brew cask install vlc && \
brew cask install whatsapp && \
brew cask install zeplin && \
brew cask install zoomus

# Remove brew cruft
brew cleanup
