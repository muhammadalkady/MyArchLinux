#!/bin/bash

# ----------------------------- Define constants. ---------------------------- #

dotfiles_path=dotfiles

# --------------------------- Copying configuration -------------------------- #

# ------------------------------------ git ----------------------------------- #

cp $dotfiles_path/home/.gitconfig "$HOME"/.gitconfig

# -------------------------------- XResources -------------------------------- #

cp $dotfiles_path/home/.Xresources "$HOME"/.Xresources
xrdb -merge .Xresources

# --------------------------------- GTK theme -------------------------------- #

cp $dotfiles_path/home/.gtkrc-2.0.mine "$HOME"/.gtkrc-2.0
cp -r $dotfiles_path/home/gtk-2.0 "$HOME"/.config/gtk-2.0
cp -r $dotfiles_path/home/gtk-3.0 "$HOME"/.config/gtk-3.0

# ------------------------- Making .config directory ------------------------- #

mkdir -p "$HOME"/.config

# --------------------------------- i3 config -------------------------------- #

cp -r $dotfiles_path/home/.config/i3 "$HOME"/.config/i3

# ----------------------------- i3 status config ----------------------------- #

cp -r $dotfiles_path/home/.config/i3status "$HOME"/.config/i3status

# ------------------------- Geany text editor config ------------------------- #

cp -r $dotfiles_path/home/.config/geany "$HOME"/.config/geany

# ------------------------------ light dm theme ------------------------------ #

sudo cp -a $dotfiles_path/dm/. /etc/lightdm/

# --------------------------------- Rebooting -------------------------------- #

reboot
