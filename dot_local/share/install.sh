#!/bin/sh
# Install essential tools if not present

sudo apt update
sudo apt install -y \
  zsh \
  git \
  vim \
  tmux \
  nvim \
  build-essential

# install starship
curl -sS https://starship.rs/install.sh | sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
