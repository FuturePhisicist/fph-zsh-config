#!/bin/bash

CURRENT_USER_FONT_PATH=~/.local/share/fonts/

mkdir -p "$CURRENT_USER_FONT_PATH"

curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf --output "${CURRENT_USER_FONT_PATH}MesloLGS NF Regular.ttf"
curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf --output "${CURRENT_USER_FONT_PATH}MesloLGS NF Bold.ttf"
curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf --output "${CURRENT_USER_FONT_PATH}MesloLGS NF Italic.ttf"
curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf --output "${CURRENT_USER_FONT_PATH}MesloLGS NF Bold Italic.ttf"

