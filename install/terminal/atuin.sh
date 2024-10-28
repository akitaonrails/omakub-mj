yay -Sy --noconfirm atuin

if $(gum confirm "Press (Y) to register a new account into Atuin or (N) if want to log back in."); then
  atuin register
else
  atuin login
fi
