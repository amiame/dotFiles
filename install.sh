#! /bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/amir_c/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install ripgrep
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install tree
brew install nvim

cp -R .config ~/.
cp -R .local ~/.
cp .giconfig ~/.

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
