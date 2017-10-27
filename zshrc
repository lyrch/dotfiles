export PATH="/usr/local/sbin:$PATH"
source ~/.zplug/init.zsh

#zplug "caiogondim/bullet-train.zsh"
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "themes/kolo", from:oh-my-zsh, use:"kolo.zsh-theme"
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/taskwarrior", from:oh-my-zsh
zplug "plugins/zsh-syntax-highlighting", from:oh-my-zsh
#zplug "caiogondim/bullet-train.zsh", as:theme
# antigen bundle pip
# antigen bundle lein


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bira"
BULLETTRAIN_CONTEXT_BG="light grey"

zplug load
