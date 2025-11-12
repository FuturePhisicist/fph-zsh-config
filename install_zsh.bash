#!/bin/bash

# https://gitlab.manjaro.org/packages/extra/manjaro-zsh-config/-/blob/master/PKGBUILD?ref_type=heads

# Optional: Install zsh if not already present
# sudo pacman -S --needed zsh

# Define default and effective custom directories
ZSH_DEFAULT_CUSTOM="$HOME/.oh-my-zsh/custom"
ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH_DEFAULT_CUSTOM}"

# *. Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Debug info
echo "ZSH_CUSTOM resolved to: $ZSH_CUSTOM"

# Ensure plugins directory exists
mkdir -p "$ZSH_CUSTOM/plugins"

# 1. zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# 2. zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"

# 3. zsh-completions
git clone https://github.com/zsh-users/zsh-completions.git "$ZSH_CUSTOM/plugins/zsh-completions"

# 4. zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search "$ZSH_CUSTOM/plugins/zsh-history-substring-search"

# 6. ttf-meslo-nerd-font-powerlevel10k
bash install_meslo_fonts.sh

# 7. zsh-theme-powerlevel10k 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

# 8. Copy the .zshrc safely
cp ~/.zshrc ~/.zshrc.back 2>/dev/null || true
cp .zshrc ~/.zshrc

