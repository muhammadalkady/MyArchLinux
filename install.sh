cat <<welcome_message
This script was written by Muhammad Alkady kady.muhammad@gmail.com
welcome_message

# Updating ArchLinux System.
echo "Updating ArchLinux System..."
sudo pacman -Syu --noconfirm

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

echo "Installing network manager"
sudo pacman -S networkmanager --noconfirm --needed

echo "Installing themes..."
sudo pacman -S lxappearance paper-icon-theme adapta-gtk-theme --noconfirm --needed

echo "Installing disk tools..."
sudo pacman -S gparted ntfs-3g --noconfirm --needed

echo "Installing Firefox"
sudo pacman -S firefox --noconfirm --needed

echo "install text tools..."
sudo pacman -S vim nano geany --noconfirm --needed

echo "Installing Java..."
sudo pacman -S jdk8-openjdk jdk11-openjdk jdk17-openjdk --noconfirm --needed

echo "Installing mics tools..."
sudo pacman -S tldr wget neofetch --noconfirm --needed

echo "Installing media tools..."
sudo pacman -S pavucontrol mvp ffmpeg --noconfirm --needed

# Rebooting....
echo "Rebooting...."
reboot
