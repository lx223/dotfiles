brew tap caskroom/cask
brew cask install iterm2
brew cask install atom

# Git
brew install git
git config --global user.name "Lan Xiao"
git config --global user.email "lx223@users.noreply.github.com"
git config --global credential.helper osxkeychain
git config --global core.editor "atom --wait"
git config --global rebase.autoStash true

# Zsh
brew install zsh zplug
ln -s "$(pwd)/.zshrc" ~/.zshrc
(echo 'echo /usr/local/bin/zsh >> /etc/shells' | sudo -s) && chsh -s /usr/local/bin/zsh
