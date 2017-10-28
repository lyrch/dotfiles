export PATH="/usr/local/sbin:$PATH"
source ~/.zplug/init.zsh

zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "themes/kolo", from:oh-my-zsh, use:"kolo.zsh-theme"
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/taskwarrior", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh

zplug load
