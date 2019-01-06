export DEFAULT_USER=rupertjeff

# https://github.com/willghatch/zsh-saneopt/blob/master/saneopt.plugin.zsh
setopt auto_cd

source $0:a:h/.promptrc
source $0:a:h/zplug/.zplugrc

alias ll='ls -AlhF'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

