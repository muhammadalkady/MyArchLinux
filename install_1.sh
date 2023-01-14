#!/bin/bash

################################################################################################
#
# Defining constants.
#
################################################################################################

dotfiles_path=dotfiles
dpi=144
user_name=muhammad

################################################################################################
#
# Printing welcome message.
#
################################################################################################

cat <<welcome_message
This script was written by Muhammad Alkady kady.muhammad@gmail.com.
This is script for my usages only. Use it at your own risk.
welcome_message

################################################################################################
#
# Printing constants.
#
################################################################################################

cat <<config_constants
dotfiles path -----> $dotfiles_path
dpi           -----> $dpi
user name     -----> $user_name
config_constants

################################################################################################
#
# Updating ArchLinux System.
#
################################################################################################

echo "Updating ArchLinux System..."
sudo pacman -Syu --noconfirm

################################################################################################
#
# Installing yay!. 
# "yay" is a command-line utility for Arch Linux and its derivatives that is 
# used to install and manage packages from the AUR (Arch User Repository). 
# It is a wrapper for the pacman package manager, which is the default package 
# manager for Arch Linux. yay provides additional features such as automatic 
# dependency resolution and the ability to easily search and manage AUR packages.
#
################################################################################################

echo "Installing yay..."
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $user_name:users yay
cd yay || exit
makepkg -si
yay --version
cd ..

################################################################################################
#
# Installing Xorg.
# Xorg is the X Window System server for Linux and Unix-like operating systems. 
# It is the software responsible for displaying graphics on the screen, and it provides 
# a communication interface between applications and the hardware (such as keyboard, mouse, and monitor). 
# Xorg is an open-source implementation of the X Window System and it is the default display server on most Linux distributions. 
# It provides a framework for building graphical user interfaces and enables the development of graphical applications.
#
################################################################################################

echo "Installing Xorg..."
sudo pacman -S xorg-server xorg-apps xorg-xinit --noconfirm --needed

################################################################################################
#
# Installing i3 WM and dmenu.
# i3 is a tiling window manager for Linux and Unix-like operating systems.
# It is designed to be lightweight and highly configurable, and it organizes 
# application windows into a grid-like layout, automatically adjusting the size
# and position of each window to make the most efficient use of screen space. 
# i3 is known for its simplicity, flexibility and efficiency, 
# it does not provide fancy features like a desktop environment does, 
# it rather focuses on providing a simple, efficient way to manage windows.
# dmenu is a simple program launcher and command executor for Linux and Unix-like operating systems.
# It is often used as a launcher in i3 and other tiling window managers. dmenu displays 
# a vertical list of options and allows the user to select one by typing a search string. 
# The program then launches the selected option or runs the selected command. 
# dmenu is highly configurable and can be customized to suit the user's needs.
#
################################################################################################

echo "Installing i3 WM and dmenu..."
sudo pacman -S i3 i3lock i3blocks i3status dmenu --noconfirm --needed

################################################################################################
#
# Installing xnumlockx.
# xnumlockx is a program that can be used to enable or disable the num lock key on the keyboard.
# It is typically used in conjunction with window managers like i3 or other X Window System-based environments. 
# The program can be configured to automatically enable num lock when the X server starts, or it can be invoked 
# manually to toggle the num lock state. xnumlockx is a small, lightweight program and it does not have a graphical user interface (GUI)
# It is a small command line utility which can be invoked to toggle the num lock state on the keyboard.
# It is useful for window managers like i3, which does not have built-in support for num lock,
# as it allows you to enable num lock automatically when you log in, or toggle it manually when you need it.
#
################################################################################################

echo "Installing xnumlockx..."
sudo pacman -S xnumlockx --noconfirm --needed

################################################################################################
#
# Installing display manager.
# A display manager (DM) is a type of software that provides a login interface for users on a Linux 
# or Unix-like operating system. A display manager typically runs as a daemon and manages 
# the X display server, which is responsible for displaying the graphical user interface (GUI) on the screen.
# A DM allows users to log in to their graphical desktop environment, and it provides
# a way for multiple users to log in to the same computer at the same time. Some examples 
# of popular display managers include GDM (GNOME Display Manager), KDM (KDE Display Manager), 
# LightDM, and SDDM (Simple Desktop Display Manager).
# The display manager is typically the first thing a user sees when starting a Linux system, 
# it typically shows a login screen where the user enters credentials and then the desktop environment is launched.
#
################################################################################################

echo "Installing display manager..."
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm --needed

################################################################################################
#
# Installing recommended fonts.
#
################################################################################################

echo "Installing recommended fonts..."
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome --noconfirm --needed

################################################################################################
#
# picom (formerly known as compton) is a lightweight compositor for Xorg, a compositing window 
# manager for the X Window System, used to provide transparency and other visual effects 
# for your desktop environment. It is designed to be lightweight and uses hardware 
# acceleration, making it suitable for use on older or less powerful systems.
# Picom works as an overlay between the X11 server and the window manager,
# adding effects to the windows and compositing them in a display buffer before sending 
# the final image to the screen.
# It can provide features such as transparent windows, shadows, and fading effects, and it 
# can also be used to fix some issues with tearing or stuttering when playing videos.
# Picom can also be configured to work with a variety of window managers, including i3, Openbox,
# and Xfce. It is a open-source software and can be easily installed on most Linux distributions.
#
################################################################################################

echo "Installing picom..."
sudo pacman -S picom --noconfirm --needed
yay -S picom-jonaburg-git --noconfirm

################################################################################################
#
# A network manager is a program that manages the network connections on a Linux or Unix-like 
# operating system. It provides a centralized way to configure and control the network interfaces, 
# allowing the user to easily connect to different networks, such as wired and wireless 
# networks, VPNs, and mobile networks.
# The network manager typically runs as a daemon in the background and provides a user-friendly 
# interface for managing network connections. It allows the user to easily connect and disconnect 
# from networks, change network settings, and view network status information. The network manager 
# also automatically manages connections, switching between available networks and reconnecting 
# when a connection is lost.
# Some popular network managers in Linux include NetworkManager, wicd, and ConnMan. 
# NetworkManager is the most commonly used and it is present in most of the modern Linux distributions. 
# It has a command-line interface and a GUI for network management, it can automatically 
# connect to wireless networks, it can handle multiple connections, it supports VPN 
# connections and mobile broadband, among other features.
#
################################################################################################

echo "Installing network manager"
sudo pacman -S networkmanager --noconfirm --needed

################################################################################################
#
# Installing themes.
#
################################################################################################

echo "Installing themes..."
sudo pacman -S lxappearance papirus-icon-theme adapta-gtk-theme --noconfirm --needed

################################################################################################
#
# Installing disk tools.
#
################################################################################################

echo "Installing disk tools..."
sudo pacman -S gparted ntfs-3g --noconfirm --needed

################################################################################################
#
# Installing Firefox.
#
################################################################################################

echo "Installing Firefox"
sudo pacman -S firefox --noconfirm --needed

################################################################################################
#
# Installing Google Chrome.
#
################################################################################################

echo "Installing Google Chrome..."
yay -S google-chrome --noconfirm

################################################################################################
#
# Installing text tools.
#
################################################################################################

echo "install text tools..."
sudo pacman -S vim nano geany --noconfirm --needed

################################################################################################
#
# Installing Java 8,11 and 17.
#
################################################################################################

echo "Installing Java..."
sudo pacman -S jdk8-openjdk jdk11-openjdk jdk17-openjdk --noconfirm --needed

################################################################################################
#
# Installing misc tools.
#
################################################################################################

echo "Installing mics tools..."
sudo pacman -S tldr wget neofetch xdg-utils --noconfirm --needed

################################################################################################
#
# Installing media tools.
#
################################################################################################

echo "Installing media tools..."
sudo pacman -S pavucontrol mvp ffmpeg --noconfirm --needed

################################################################################################
#
# Installing lightdm greeter.
#
################################################################################################

echo "Enabling lightdm greeter..."
sudo systemctl enable lightdm -f

################################################################################################
#
# Installing terminals.
#
################################################################################################

echo "Installing terminal..."
sudo pacman -S xfce4-terminal alacritty --noconfirm --needed

################################################################################################
#
# Installing zsh.
#
################################################################################################

echo "Installing zsh..."
sudo pacman -S zsh --noconfirm --needed
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
yay -S zsh-syntax-highlighting-git --noconfirm

################################################################################################
#
# Installing file manager.
#
################################################################################################

echo "Installing thunar..."
sudo pacman -S thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman --noconfirm --needed

################################################################################################
#
# Installing aditional fonts.
#
################################################################################################

echo "Installing Iosevka and MicrosoftFonts fonts..."
yay -S ttf-ms-fonts ttc-iosevka ttf-iosevka-nerd --noconfirm

################################################################################################
#
# Installing file manager.
#
################################################################################################

echo "Installing Idea Ultimate"
yay -S intellij-idea-ultimate-edition --noconfirm

################################################################################################
#
# Installing Android Studio, and dev tools [screen copy]
#
################################################################################################

echo "Installing Android Studio..."
yay -S android-studio --noconfirm

echo "Installing screen copy..."
yay -S scrcpy --noconfirm

################################################################################################
#
# Installing Flutter SDK.
#
################################################################################################

echo "Installing Flutter..."
yay -S flutter --noconfirm
sudo chown $user_name: /opt/flutter
flutter doctor

################################################################################################
#
# Add install_2.sh script to be excuted after the reboot using systemd service.
#
################################################################################################

cp ./my_archlinux_install.service /etc/systemd/system

################################################################################################
#
# rebooting.
#
################################################################################################

reboot
