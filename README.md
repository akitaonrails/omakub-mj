# Omakub-MJ

Turn a fresh Manjaro GNOME installation into a fully-configured, beautiful, and modern web development system by running a single command. That's the one-line pitch for Omakub-MJ. No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Omakub-MJ is an opinionated take on what Linux can be at its best.

Watch the introduction video and read more at [omakub.org](https://omakub.org).

This is a FORK of the original [Basecamp's Omakub](https://github.com/basecamp/omakub/). The original project targets only Ubuntu. This fork is intended for Arch Linux in general - Manjaro Gnome, in particular.

There is an Arch version for WSL2 on Windows, called [ArchWSL](https://github.com/yuk7/ArchWSL). There are at least 2 things to keep in mind:

1. it uses fakeroot-tcp instead of fakeroot. lazydocker script takes care of this dependency
2. docker must be installed externally through [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop/) after setting up ArchWSL. It should create the proper docker client cli commands inside Arch. Run Omakub-MJ after that.

## Install

From a Terminal run:

    wget -qO- https://raw.githubusercontent.com/akitaonrails/omakub-mj/stable/boot.sh | bash

And follow the instructions on screen. 

Pay attention because this procedure will install [Atuin - Magic History](https://atuin.sh/), and it will prompt you to either register or login.

# Zellij + NeoVIM

The original Omakub has a bug: Zellij's shortcuts don't play nice with NeoVim. Both share the same modifier "Ctrl". It's just not possible to navigate among Neovim's pane using "Ctrl + (h,j,j,l)", for example.

In order to fix this, I merged the [Shoukoo's Zellij loves NeoVim](https://shoukoo.github.io/blog/zellij-love-neovim/) suggestion. 

It makes Zellij slightly more cumbersome to use but it makes NeoVim work properly within Zellij.

Zellij has "modes", similar to Vim's Normal or Visual modes. This patch adds a "tmux" mode.

For example, in DHH's version, to split Zellij with a new horizontal pane, we could just press "Ctrl P D". Now we first have to first "Ctrl f" to change to "tmux mode", then press "P D". Keep that in mind.

## Contributing to the documentation

Please help us improve Omakub's documentation on the [basecamp/omakub-site repository](https://github.com/basecamp/omakub-site).

## License

Omakub is released under the [MIT License](https://opensource.org/licenses/MIT).

## Extras

While omakub is purposed to be an opinionated take, the open source community offers alternative customization, add-ons, extras, that you can use to adjust, replace or enrich your experience.

[⇒ Browse the omakub extensions.](EXTENSIONS.md)
