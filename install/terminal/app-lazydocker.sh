# Arch under WSL2 already comes with fakeroot-tcp
if ![ pacman -Q fakeroot-tcp ] &>/dev/null; then
  sudo pacman -S --needed fakeroot
fi

yay -S --needed lazydocker-bin --noconfirm
