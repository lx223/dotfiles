# Git
brew install git
git config --global user.name "Lan Xiao"
git config --global user.email "lx223@users.noreply.github.com"
git config --global credential.helper osxkeychain

# Zsh
brew install zsh zplug
ln -s "$(pwd)/.zshrc" ~/.zshrc
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

# iTerm2
brew tap caskroom/cask
brew cask install iterm2
git submodule update
