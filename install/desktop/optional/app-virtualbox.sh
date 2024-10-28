# Virtualbox allows you to run VMs for other flavors of Linux or even Windows
# See https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview
# for a guide on how to run Ubuntu inside it.
yay -S --needed virtualbox virtualbox-ext-oracle --noconfirm
sudo usermod -aG vboxusers ${USER}
newgrp vboxusers
