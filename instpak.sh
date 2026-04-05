#!/bin/bash

PACKAGES=(
    "niri"
    "foot"
    "wofi"
    "zsh"
    "starship"
    "zoxide"
    "fastfetch"
    "btop"
    "cava"
    "btop"
    "htop"
    "mpd"
    "ncmpcpp"
    "wlogout"
    "yazi"
    "iwd"
    "seatd"
    "tlp"
    "dbus"
    "nano"
    "neovim"    
    "kitty"
    "alacritty"
    "yt-dlp"
    "wf-recorder"
    "unzip"
    "pulseaudio"
    "polkit"
    "make"
    "cmake"
    "ffmpeg"
    "firefox"
    "flatpak"
    "7zip"
)

install_void() {
    echo "Detectado Void Linux. Usando xbps..."
    sudo xbps-install -Syu && sudo xbps-install -Sy "${PACKAGES[@]}" Waybar
}

install_arch() {
    echo "Usando pacman..."
    sudo pacman -Syu && sudo pacman -S "${PACKAGES[@]}" waybar
}

install_debian() {
    echo "Usando apt..."
    sudo apt update && sudo apt upgrade && sudo apt install -y "${PACKAGES[@]}" waybar
}

if [ -f /usr/bin/xbps-install ]; then
    install_void
elif [ -f /usr/bin/pacman ]; then
    install_arch
elif [ -f /usr/bin/apt ]; then
    install_debian
else
    echo -e "Error: Gestor de paquetes no soportado para auto-instalación"
    exit 1
fi

echo -e "Paquetes sincronizados. Construyendo desde cero."
