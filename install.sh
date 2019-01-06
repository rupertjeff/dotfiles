# Install basics

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Put .zshrc into the correct spot
cp $0/default.zshrc ~/.zshrc

# Install NVM

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install Node

nvm install lts

# Install needed packages
brew bundle

# Set ZSH as default shell
chsh -s /usr/local/bin/zsh

echo "Restart to get ZSH set as default shell."
echo;

