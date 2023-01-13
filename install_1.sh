#!/bin/bash

# Define constants.
dotfiles_path=dotfiles
dpi=144
user_name=muhammad

cat <<welcome_message
This script was written by Muhammad Alkady kady.muhammad@gmail.com.
This is script for my usages only. Use it at your own risk.
welcome_message

# Printing constants
cat <<config_constants
dotfiles path -----> $dotfiles_path
dpi           -----> $dpi
user name     -----> $user_name
config_constants

echo "Updating ArchLinux System..."
sudo pacman -Syu --noconfirm

echo "Installing yay..."
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $user_name:users yay
cd yay || exit
makepkg -si
yay --version
cd ..

# Installing Xorg.
echo "Installing Xorg..."
sudo pacman -S xorg-server xorg-apps xorg-xinit --noconfirm --needed

# Installing i3 WM and dmenu.
echo "Installing i3 WM and dmenu..."
sudo pacman -S i3 i3lock i3blocks i3status dmenu --noconfirm --needed

# Installing xnumlockx.
echo "Installing xnumlockx..."
sudo pacman -S xnumlockx --noconfirm --needed

# Installing display manager.
echo "Installing display manager..."
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm --needed

# Installing recommended fonts.
echo "Installing recommended fonts..."
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome --noconfirm --needed

echo "Installing picom..."
sudo pacman -S picom --noconfirm --needed

echo "Installing network manager"
sudo pacman -S networkmanager --noconfirm --needed

echo "Installing themes..."
sudo pacman -S lxappearance papirus-icon-theme adapta-gtk-theme --noconfirm --needed

echo "Installing disk tools..."
sudo pacman -S gparted ntfs-3g --noconfirm --needed

echo "Installing Firefox"
sudo pacman -S firefox --noconfirm --needed

echo "install text tools..."
sudo pacman -S vim nano geany --noconfirm --needed

echo "Installing Java..."
sudo pacman -S jdk8-openjdk jdk11-openjdk jdk17-openjdk --noconfirm --needed

echo "Installing mics tools..."
sudo pacman -S tldr wget neofetch xdg-utils --noconfirm --needed

echo "Installing media tools..."
sudo pacman -S pavucontrol mvp ffmpeg --noconfirm --needed

echo "Enabling lightdm greeter..."
sudo systemctl enable lightdm -f

echo "Installing terminal..."
sudo pacman -S xfce4-terminal --noconfirm --needed

echo "Installing terminal..."
sudo pacman -S xfce4-terminal --noconfirm --needed

echo "Installing thunar..."
sudo pacman -S thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman --noconfirm --needed

echo "Installing Iosevka and MicrosoftFonts fonts..."
yay -S ttf-ms-fonts ttc-iosevka ttf-iosevka-nerd --noconfirm

echo "Installing Google Chrome..."
yay -S google-chrome --noconfirm

echo "Installing Idea Ultimate"
yay -S intellij-idea-ultimate-edition --noconfirm

echo "Installing Android Studio..."
yay -S android-studio --noconfirm

# Installing Flutter and fix permissions issue.
echo "Installing Flutter..."
yay -S flutter
sudo chown $user_name: /opt/flutter
flutter doctor

echo "Installing screen copy..."
yay -S scrcpy --noconfirm

reboot
