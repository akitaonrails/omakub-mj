set -e

ascii_art='   ____  __  ______    __ ____  ______     __  ___    __
  / __ \/  |/  /   |  / //_/ / / / __ )   /  |/  /   / /
 / / / / /|_/ / /| | / ,< / / / / __  |  / /|_/ /_  / / 
/ /_/ / /  / / ___ |/ /| / /_/ / /_/ /  / /  / / /_/ /  
\____/_/  /_/_/  |_/_/ |_\____/_____/  /_/  /_/\____/   
'

echo -e "$ascii_art"
echo "=> Omakub is for fresh Manjaro GNOME 24 or newer installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

# Check for 'yay' and install it if not found
if ! command -v yay >/dev/null 2>&1; then
  echo "=> 'yay' not found. Installing 'yay'..."
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  pushd /tmp/yay >/dev/null
  makepkg -si --noconfirm
  popd >/dev/null
  rm -rf /tmp/yay
fi

# Update the system and 'yay'
echo "=> Updating system and 'yay' packages..."
yay -Syyuu --noconfirm

echo "Cloning Omakub..."
rm -rf ~/.local/share/omakub
git clone "${OMAKUB_REPO:-https://github.com/akitaonrails/omakub.git}" ~/.local/share/omakub >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
  cd ~/.local/share/omakub
  git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
  cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
