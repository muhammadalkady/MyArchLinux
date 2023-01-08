#!/bin/bash
# Define constants.
dotfiles_path=dotfiles
# Copying configuration
# git
cp $dotfiles_path/.gitconfig "$HOME"/.gitconfig
# XResources
cp $dotfiles_path/.Xresources "$HOME"/.Xresources
# GTK theme
cp $dotfiles_path/.gtkrc-2.0.mine "$HOME"/.gtkrc-2.0
cp -r $dotfiles_path/gtk-2.0 "$HOME"/.config/gtk-2.0
cp -r $dotfiles_path/gtk-3.0 "$HOME"/.config/gtk-3.0
#
mkdir -p "$HOME"/.config
cp -r $dotfiles_path/i3 "$HOME"/.config/i3
cp -r $dotfiles_path/i3status "$HOME"/.config/i3status
cp -r $dotfiles_path/geany "$HOME"/.config/geany
sudo cp -a $dotfiles_path/dm/. /etc/lightdm/
# Rebooting....
echo "run install_2 after rebooting"
