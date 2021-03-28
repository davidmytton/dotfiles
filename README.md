# Dotfiles

Based on [this Reddit
thread](https://www.reddit.com/r/unixporn/comments/ivcxcw/sway_plateau/) and
forked from [the associated GitHub
repo](https://github.com/snakedye/sway_config).

## Setup

1. Install packages below.
2. Clone this repo.
3. Run `./install` to set up symlinks using
   [dotbot](https://github.com/anishathalye/dotbot).

## Minimum required packages

1. `sudo pacman -S zsh git firefox neovim inetutils alacritty pacman-contrib
   tex-gyre-fonts inter-font`
2. `chsh -s $(which zsh)` then logout/login.
3. Install [ohmyzsh](https://ohmyz.sh/#install).
4. [Set up nvim init](https://neovim.io/doc/user/nvim.html#nvim-from-vim)
5. `mkdir ~/.themes/` then clone
   [Nordic](https://github.com/EliverLara/Nordic).

## Text

[tectonic](https://tectonic-typesetting.github.io/en-US/index.html) is the
LaTeX compiler. Ale is installed to vim with `:PlugInstall`. It uses several
linters that need installing:

* markdownlint -
  [AUR](https://aur.archlinux.org/packages/nodejs-markdownlint-cli/) and
  [npm](https://github.com/igorshubovych/markdownlint-cli).
* flake8 (Python) - AUR and pypi.
* [vale](https://docs.errata.ai/vale/about/) (Markdown and tex) - with
  [Microsoft](https://github.com/errata-ai/Microsoft) and
  [proselint](https://github.com/errata-ai/proselint) styles installed.

Autocomplete ([deoplete](https://github.com/Shougo/deoplete.nvim),
[deoplete-jedi](https://github.com/deoplete-plugins/deoplete-jedi),
[jedi-vim](https://github.com/davidhalter/jedi-vim)) require [python-pynvim
package](https://www.archlinux.org/packages/community/any/python-pynvim/),
[python-jedi](https://www.archlinux.org/packages/community/any/python-jedi/)
and
[python-msgpack](https://www.archlinux.org/packages/community/x86_64/python-msgpack/).

## Packages - swaywm

* WM: [swaywm](https://swaywm.org/)
  ([Package](https://aur.archlinux.org/packages/sway-git/))
  * Lock: [swaylock](https://github.com/swaywm/swaylock)
    ([Package](https://www.archlinux.org/packages/community/x86_64/swaylock/))
  * Screenshots: [grim](https://github.com/emersion/grim)
    ([Package](https://www.archlinux.org/packages/community/x86_64/grim/))
* Status bar: [waybar](https://github.com/Alexays/Waybar/)
  ([Package](https://aur.archlinux.org/packages/waybar-git/))
* Notifications: [mako](https://wayland.emersion.fr/mako/)
  ([Package](https://www.archlinux.org/packages/community/x86_64/mako/))
