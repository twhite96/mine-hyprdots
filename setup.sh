#!/bin/bash


echo "Copying config files..."
cp -r cava dunst fastfetch gtk-3.0 gtk-4.0 hypr hypridle rofi starship tmux waybar yazi ~/.config/

cp -r bin ~/.local/bin/

echo "Copying .zshrc..."
cp zsh/.zshrc ~/.zshrc

echo "Cloning dotsh repo..."
mkdir -p ~/SideProjects/
git clone https://github.com/ad1822/dotsh ~/SideProjects/dotsh

cd ~/SideProjects/dotsh || exit

echo "Making scripts executable..."
chmod +x *

echo "Setup complete!"

