#!/bin/bash

set -euo pipefail


#sudo pacman -S hyprland waybar dunst kitty neovim git wl-clipboard xdg-desktop-portal-hyprland xdg-desktop-portal wofi network-manager-applet brightnessctl pavucontrol tmux rofi yazi firefox pamixer hyprlock grim slurp  

cat << EOF | lolcat
  _________       __   ____ ___         
 /   _____/ _____/  |_|    |   \______  
 \_____  \_/ __ \   __\    |   /\____ \ 
 /        \  ___/|  | |    |  / |  |_> >
/_______  /\___  >__| |______/  |   __/ 
        \/     \/               |__|    

EOF


echo "Copying config files..."
cp -r cava kitty dunst fastfetch gtk-3.0 gtk-4.0 hypr hypridle rofi starship tmux waybar yazi ~/.config/

cd ~/.config/waybar/scripts
chmod +x *

cd ~/hyprdots

cd ~/.config/rofi
chmod +x *

cd ~/hyprdots

cp -r bin ~/.local/bin/

cd ~/.local/bin/
chmod +x *

cd ~/hyprdots/

echo "Copying .zshrc..."
cp zsh/.zshrc ~/.zshrc

echo "Cloning dotsh repo..."
mkdir -p ~/SideProjects/
git clone https://github.com/ad1822/dotsh ~/SideProjects/dotsh

cd ~/SideProjects/dotsh || exit

echo "Making scripts executable..."
chmod +x *

echo "Setup complete!"

mkdir -p ~/.local/share/fonts/fontawesome

echo "Installing Font Awesome Icon pack (Version 5 and 6)"
if [[ ! -f ~/.local/share/fonts/fontawesome/fa-brands-400.ttf ]]; then
    wget -q https://use.fontawesome.com/releases/v6.7.2/fontawesome-free-6.7.2-desktop.zip
    unzip fontawesome-free-6.7.2-desktop.zip -d ~/.local/share/fonts/fontawesome
    mv fontawesome6/otfs/*.otf ~/.local/share/fonts/fontawesome/
    rm -rf fontawesome6 fontawesome-free-6.7.2-desktop.zip

    wget -q https://use.fontawesome.com/releases/v5.15.4/fontawesome-free-5.15.4-desktop.zip
    unzip fontawesome-free-5.15.4-desktop.zip -d ~/.local/share/fonts/fontawesome
    mv fontawesome5/otfs/*.otf ~/.local/share/fonts/fontawesome/
    rm -rf fontawesome5 fontawesome-free-5.15.4-desktop.zip
else
    echo "Font Awesome already installed, skipping download."
fi

echo "Installing JetBrains Nerd Fonts"
mkdir -p ~/.local/share/fonts/JetBrainsMono
if [[ ! -f ~/.local/share/fonts/JetBrainsMono/JetBrainsMono-Regular.ttf ]]; then
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
    unzip -q JetBrainsMono.zip -d JetBrainsMono
    mv JetBrainsMono/*.ttf ~/.local/share/fonts/JetBrainsMono/
    rm -rf JetBrainsMono JetBrainsMono.zip
else
    echo "JetBrains Nerd Fonts already installed, skipping download."
fi

fc-cache -f -v

echo "Setup completed successfully!"
