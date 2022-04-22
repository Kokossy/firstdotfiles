#add to repo: config bspwm, ocnfig sxhkd config xinitrc and /etc/xdg/picom.conf
#tapeta mosi sie nazywac basic.jpg

cd ~
mkdir Downloads
mkdir Wallpapers
cd Downloads
  
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

yay -S mpd libmpdclient
yay -S picom bspwm dunst polybar arandr rofi sxhkd nitrogen kitty rxvt-unicode neovim brave-bin nautilus rofi-dmenu lxappearance gedit gnome-disk-utility gnome-control-center alsa-utils sddm xorg-xsetroot calc pywal networkmanager-dmenu neofetch zsh ripgrep gnome-font-viewer nerd-fonts-fira-code nerd-fonts-hack noto-fonts-emoji nerd-fonts-jetbrains-mono spotify discord visual-studio-code-bin catppuccin-gtk-theme gnome-keyring cava cmatrix xdg-user-dirs-gtk pavucontrol
yay -S polybar brave-bin

cd ~
mkdir .config/bspwm
mkdir .config/sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc .config/bspwm
cp /usr/share/doc/bspwm/examples/sxhkdrc .config/sxhkd
cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc
cp /etc/X11/xinit/xinitrc .xinitrc
sudo systemctl enable sddm.service

cd ~/Downloads
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
./setup.sh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/Kokossy/firstdotfiles
cd firstdotfiles
cp bspwm ~/.config/
cp dunst ~/.config/
cp picom ~/.config/
cp rofi ~/.config/
cp sxhkd ~/.config/
cp .screenlayout ~/
cp .xinitrc ~/

echo "Install catppuccin themes! IMPORTANT: GTK, mouse"


