#!/bin/bash

set -euo pipefail


#sudo pacman -S hyprland waybar dunst kitty neovim git wl-clipboard xdg-desktop-portal-hyprland xdg-desktop-portal wofi network-manager-applet brightnessctl pavucontrol tmux rofi yazi firefox pamixer hyprlock grim slurp

cat << EOF
  _________       __   ____ ___
 /   _____/ _____/  |_|    |   \______
 \_____  \_/ __ \   __\    |   /\____ \
 /        \  ___/|  | |    |  / |  |_> >
/_______  /\___  >__| |______/  |   __/
        \/     \/               |__|

EOF


CONFIGS="cava kitty dunst fastfetch hypr hypridle rofi starship tmux waybar yazi"
BACKUP_DIR="$HOME/.config_backup"
LOCAL_BIN="$HOME/.local/bin"
FONT_DIR="$HOME/.local/share/fonts"
DOTS_DIR="$HOME/hyprdots"

echo "==> Backing up existing config files..."
mkdir -p "$BACKUP_DIR"
for dir in $CONFIGS; do
    if [ -d "$HOME/.config/$dir" ]; then
        echo "=> Backing up $dir to $BACKUP_DIR"
        mv "$HOME/.config/$dir" "$BACKUP_DIR/$dir"
    fi
done

echo "==> Copying new config files..."
cp -r $CONFIGS "$HOME/.config/"

echo "==> Making Waybar and Rofi scripts executable..."
chmod +x ~/.config/waybar/scripts/*
chmod +x ~/.config/rofi/* || true

echo "==> Copying binaries..."
mkdir -p "$LOCAL_BIN"
cp -r bin/* "$LOCAL_BIN"
chmod +x "$LOCAL_BIN"/*

echo "==> Copying .zshrc..."
cp zsh/.zshrc "$HOME/.zshrc"

echo "==> Making scripts executable..."
chmod +x "$DOTS_DIR"/* || true

# Font Awesome Installation
FA_DIR="$FONT_DIR/fontawesome"
mkdir -p "$FA_DIR"

echo "==> Installing Font Awesome (v5 & v6)..."
if [[ ! -f "$FA_DIR/fa-brands-400.ttf" ]]; then
    wget -q https://use.fontawesome.com/releases/v6.7.2/fontawesome-free-6.7.2-desktop.zip
    unzip -q fontawesome-free-6.7.2-desktop.zip
    mv fontawesome-free-6.7.2-desktop/otfs/*.otf "$FA_DIR/"
    rm -rf fontawesome-free-6.7.2-desktop*
    
    wget -q https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip
    unzip -q fontawesome-free-5.15.4-desktop.zip
    mv fontawesome-free-5.15.4-desktop/otfs/*.otf "$FA_DIR/"
    rm -rf fontawesome-free-5.15.4-desktop*
else
    echo "✔️ Font Awesome already installed, skipping."
fi

# JetBrains Nerd Font Installation
JB_FONT_DIR="$FONT_DIR/JetBrainsMono"
mkdir -p "$JB_FONT_DIR"

echo "==> Installing JetBrains Nerd Fonts..."
if [[ ! -f "$JB_FONT_DIR/JetBrainsMono-Regular.ttf" ]]; then
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
    unzip -q JetBrainsMono.zip -d JetBrainsMono
    mv JetBrainsMono/*.ttf "$JB_FONT_DIR/"
    rm -rf JetBrainsMono JetBrainsMono.zip
else
    echo "✔️ JetBrains Nerd Font already installed, skipping."
fi

echo "==> Refreshing font cache..."
fc-cache -f -v

echo -e "\n✅ Setup completed successfully!"
