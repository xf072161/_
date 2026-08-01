#!/bin/bash
DOTFILES="$HOME/dev/personal/_"
ZSH_PLUGINS="$HOME/.zsh/plugins"

defaults write -g AppleFontSmoothing -int 0
defaults write -g ApplePressAndHoldEnabled -bool false

curl --create-dirs -o $ZSH_PLUGINS/git-completion/zsh/_git \
	https://raw.githubusercontent.com/felipec/git-completion/refs/heads/master/src/_git

curl --create-dirs -o $ZSH_PLUGINS/git-completion/zsh/git-completion.bash \
	https://raw.githubusercontent.com/felipec/git-completion/refs/heads/master/src/git-completion.bash

curl --create-dirs -o $ZSH_PLUGINS/bash-completion/completions/git \
	https://raw.githubusercontent.com/felipec/git-completion/refs/heads/master/src/git-completion.bash

curl --create-dirs -o $ZSH_PLUGINS/git-completion/prompt.sh \
	https://raw.githubusercontent.com/felipec/git-completion/refs/heads/master/src/git-prompt.sh

curl --create-dirs -o $ZSH_PLUGINS/zsh-z/zsh-z.plugin.zsh \
	https://raw.githubusercontent.com/agkozak/zsh-z/refs/heads/master/zsh-z.plugin.zsh

curl --create-dirs -o $ZSH_PLUGINS/zsh-z/_zshz \
	https://raw.githubusercontent.com/agkozak/zsh-z/refs/heads/master/_zshz

sm() {
  mkdir -p "$(dirname "$2")"
  ln -sf "$1" "$2"
  echo "symlinked $1 to $2"
}

sm "$DOTFILES/.zshrc" "$HOME/.zshrc"
sm "$DOTFILES/nvim" "$HOME/.config/nvim"
sm "$DOTFILES/ghostty" "$HOME/.config/ghostty/config"
sm "$DOTFILES/.zed/keymap.json" "$HOME/.config/zed/keymap.json"
sm "$DOTFILES/.zed/settings.json" "$HOME/.config/zed/settings.json"
