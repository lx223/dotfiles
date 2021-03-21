brew install --cask iterm2
brew install --cask visual-studio-code

brew install fzf

# Language
brew install go adoptopenjdk11

# Git
git config --global user.name "Lan Xiao"
git config --global user.email "lx223@users.noreply.github.com"
git config --global credential.helper osxkeychain
git config --global core.editor "code --wait"
git config --global rebase.autoStash true
git config --global push.default current

# Zsh
brew instal zplug
ln -s "$(pwd)/.zshrc" ~/.zshrc
touch ~/.zsh_history
chsh -s /bin/zsh
