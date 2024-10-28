# Needed for all installers
sudo pacman -Syyuu --noconfirm
sudo pacman -S curl git unzip --noconfirm

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do source $installer; done
