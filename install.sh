# Make sure XCode CLI Tools exist!
xcode-select —install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install needed packages
brew bundle

# Set up ZSH
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

zsh
echo "zmodule eriner" >> ~/.zimrc
zimfw install

# Set ZSH as default shell
chsh -s /usr/local/bin/zsh

# Set up aliases
echo 'alias ll="ls -Alh"' >> ~/.zshrc

# Node & fnm
echo 'eval "$(fnm env)"' >> ~/.zshrc
eval "$(fnm env)"
fnm install --lts

# RVM
curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby --latest

echo "Restart to get ZSH set as default shell."
echo;
