# Install basics

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# TODO: Add cask packages to Brewfile
# Install needed packages
brew bundle

# Put .zshrc into the correct spot
cp $0/default.zshrc ~/.zshrc

chsh -s /usr/local/bin/zsh

# Install Node/NVM

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash


