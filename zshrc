export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
elif [[ -f /etc/bash_completion.d/virtualenvwrapper ]] ; then
  source /etc/bash_completion.d/virtualenvwrapper
else
  echo "WARNING: Can't find virtualenvwrapper.sh"
fi
source ~/.zplug/init.zsh

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

setopt incappendhistory
setopt sharehistory

#zplug "caiogondim/bullet-train.zsh"
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "themes/kolo", from:oh-my-zsh, use:"kolo.zsh-theme"
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/taskwarrior", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
# antigen bundle pip
# antigen bundle lein

zplug load
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
