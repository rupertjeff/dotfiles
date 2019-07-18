# Install basics

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Put rc files into the correct spot
cp $0/.zshrc ~/.zshrc
cp $0/.zimrc ~/.zimrc

# Install needed packages
brew bundle

zsh

# Set up ZSH
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim
for template_file in ${ZDOTDIR:-${HOME}}/.zim/templates/*; do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  cat ${template_file} ${user_file}(.N) > ${user_file}.tmp && mv ${user_file}{.tmp,}
done
source ${ZDOTDIR:-${HOME}}/.zlogin

# Set ZSH as default shell
chsh -s /usr/local/bin/zsh

# Set up node

n 10

echo "Restart to get ZSH set as default shell."
echo;

