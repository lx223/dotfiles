brew tap caskroom/cask
brew cask install iterm2
brew cask install visual-studio-code

brew install fzf
brew install direnv

# Git
brew install git
git config --global user.name "Lan Xiao"
git config --global user.email "lx223@users.noreply.github.com"
git config --global credential.helper osxkeychain
git config --global core.editor "code --wait"
git config --global rebase.autoStash true
git config --global push.default current

# Zsh
brew install zsh zplug
ln -s "$(pwd)/.zshrc" ~/.zshrc
touch ~/.zsh_history
(echo 'echo /usr/local/bin/zsh >> /etc/shells' | sudo -s) && chsh -s /usr/local/bin/zsh