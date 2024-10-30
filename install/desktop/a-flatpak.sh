yay -S --needed flatpak --noconfirm
#following conflicts with pamac-gnome-integration, not sure if necessary TODO
#yay -S gnome-software --noconfirm
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# try to make apps use the global theme and icon set
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons
sudo flatpak override --env=GTK_THEME=Tokyonight-Dark-B-LB
