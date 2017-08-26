export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

# Syntax highlighting - always as the last to add
zplug "zsh-users/zsh-syntax-highlighting"

# Set theme
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Set nvm
export NVM_AUTO_USE=true
zplug "lukechilds/zsh-nvm"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Apply plugins
zplug load

# Aliases
alias gt='gitk &'
alias gu='git gui &'
alias gs='git status'
alias gf='git fetch --all'
alias gb='git branch'
alias gc='git checkout'
alias gp='git pull --rebase'
alias ga='git add'
alias grb='git rebase'
alias gpu='git push'
alias grh='git reset --hard'
alias grs='git reset --soft'

cd ~/InventedWorld
