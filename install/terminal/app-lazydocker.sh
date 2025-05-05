# Arch under WSL2 already comes with fakeroot-tcp
if ! $(pacman -Qi fakeroot-tcp &>/dev/null); then
  sudo pacman -S --needed fakeroot --noconfirm
fi

yay -S --needed lazydocker-bin --noconfirm
