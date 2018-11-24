#!/bin/bash

# Note: Below are packages that do not have a suitable cask or tap (homebrew)

############################################
#         DOWNLOAD ANACONDA PYTHON         #
# https://www.anaconda.com/download/#macos #
############################################

echo "Initializing setup..."
# Vars
echo "Enter the email address to associate with Git & SSH"
read EMAIL

# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles True

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/science

# Install Utilities
brew install coreutils
brew install wget
brew install htop
brew install git
brew install sbt
brew install awscli
brew install terraform
brew install vault
brew install ansible
brew install git-crypt

# Get some casks
brew cask install xquartz
brew cask install rstudio

# Install Languages
brew install r
brew install scala

# Generate SSH Key
ssh-keygen -t rsa -b 4096 -C "${EMAIL}"

# Configure Git
git config --global user.email "${EMAIL}"

# Setup ZSH
brew install zsh zsh-completions
echo $(which zsh) | sudo tee -a /etc/shells > /dev/null
chsh -s $(which zsh)
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

mkdir -p ~/.bin
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash -O ~/.bin/tmuxinator.bash
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O ~/.bin/tmuxinator.zsh

mkdir -p ~/.tmp
wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Solarized%20Dark%20-%20Patched.itermcolors -O ~/.tmp/Solarized.itermcolors
open ~/.tmp/Solarized.itermcolors

cp ./.zshrc ~/.zshrc

# Setup Tmux
brew install tmux
sudo gem install tmuxinator

echo "Cleaning up..."
rm -rf ~/.tmp
