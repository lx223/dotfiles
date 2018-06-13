export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "rupa/z", use:z.sh

# Set nvm
export NVM_AUTO_USE=true
zplug "lukechilds/zsh-nvm"

# Syntax highlighting - always as the last to add
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

# bind UP and DOWN key for history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind ⌥ + ← and → to move one word backward/forward
# bind ⌥ + UP and DOWN to move start and end of a line
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^[^[[A" beginning-of-line
bindkey "^[^[[B" end-of-line

# Set theme
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

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
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# zsh history
export HISTSIZE=2000000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
