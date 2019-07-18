export DEFAULT_USER=jrupert

# https://github.com/willghatch/zsh-saneopt/blob/master/saneopt.plugin.zsh
setopt auto_cd

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

alias ll='ls -AlhF'
