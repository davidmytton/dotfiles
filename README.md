# Dotfiles

My dotfiles for Manjaro Linux (and zshrc/vimrc for macOS). Based on [this
Reddit thread](https://www.reddit.com/r/unixporn/comments/ivcxcw/sway_plateau/)
and forked from [the associated GitHub
repo](https://github.com/snakedye/sway_config).

## Setup

1. Install packages below.
2. Clone this repo.
3. Run `./install` to set up symlinks using
   [dotbot](https://github.com/anishathalye/dotbot).

## Minimum required packages

1. `sudo pacman -S zsh git neovim inetutils termite pacman-contrib`
2. `chsh -s $(which zsh)` then logout/login.
3. Install [ohmyzsh](https://ohmyz.sh/#install).
4. [Set up nvim init](https://neovim.io/doc/user/nvim.html#nvim-from-vim)
5. `mkdir ~/.themes/` then clone
   [Nordic](https://github.com/EliverLara/Nordic).
6. Set up [Nord theme for
   gnome-terminal](https://github.com/arcticicestudio/nord-gnome-terminal).

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

## Packages - GNOME

* Theme: [Nordic](https://github.com/EliverLara/Nordic)
* Shell: [Termite](https://github.com/thestinger/termite/)
  ([Package](https://www.archlinux.org/packages/community/x86_64/termite/))
  * zsh ([Package](https://www.archlinux.org/packages/extra/x86_64/zsh/))
  * [Keychain](https://www.funtoo.org/Keychain)
    ([Package](https://www.archlinux.org/packages/extra/any/keychain/))
* Extensions
  * Dash to dock
  * OpenWeather
  * Pamac Updates Indicator
  * Pop Shell
  * Screenshot Window Sizer
  * User Themes
  * Workspace Indicator
    * Edited
      `/usr/share/gnome-shell/extensions/workspace-indicator@gnome-shell-extensions.gcampax.github.com/extension.js`
      to set it to left position.

```
function enable() {
    _indicator = new WorkspaceIndicator();

    let pos = Main.sessionMode.panel.left.indexOf('appMenu');
    if ('apps-menu' in Main.panel.statusArea)
        pos++;
    Main.panel.addToStatusArea('workspace-indicator', _indicator, pos, 'left');
}
```

## Packages - swaywm

* WM: [swaywm](https://swaywm.org/)
  ([Package](https://aur.archlinux.org/packages/sway-git/))
  * Lock: [swaylock](https://github.com/swaywm/swaylock)
    ([Package](https://www.archlinux.org/packages/community/x86_64/swaylock/))
  * Screenshots: [grim](https://github.com/emersion/grim)
    ([Package](https://www.archlinux.org/packages/community/x86_64/grim/))
* Status bar: [waybar](https://github.com/Alexays/Waybar/)
  ([Package](https://aur.archlinux.org/packages/waybar-git/))
* Theme: [Nordic](https://github.com/EliverLara/Nordic)
* Shell: [Termite](https://github.com/thestinger/termite/)
  ([Package](https://www.archlinux.org/packages/community/x86_64/termite/))
  * zsh ([Package](https://www.archlinux.org/packages/extra/x86_64/zsh/))
  * [Keychain](https://www.funtoo.org/Keychain)
    ([Package](https://www.archlinux.org/packages/extra/any/keychain/))
* Notifications: [mako](https://wayland.emersion.fr/mako/)
  ([Package](https://www.archlinux.org/packages/community/x86_64/mako/))
* Cloud sync: [rclone](https://rclone.org)
  ([Package](https://www.archlinux.org/packages/community/x86_64/rclone/))
  * [Configure rclone](https://rclone.org/onedrive/) (local config due to
    credentials being in file).
* Notes: [nb](https://xwmx.github.io/nb/)
  ([Package](https://aur.archlinux.org/packages/nb))

## Backups

Run on `rpi4` using the following packages:

* [borg](https://www.borgbackup.org/)
  ([Package](https://www.archlinux.org/packages/community/x86_64/borg/))
* [borgmatic](https://torsion.org/borgmatic/)
  ([Package](https://www.archlinux.org/packages/community/any/borgmatic/))

After dotbot installs the configs for systemd:

1. `systemctl edit borgmatic.service` and set

```
[Service]
Environment="BORG_PASSPHRASE=HERE"
```

2. `systemctl daemon-reload`
3. `systemctl start borgmatic.timer`

## .git/config

```
[filter "remove-healthchecks-url"]
    clean = "sed -e 's/^    healthchecks:.*/#    healthchecks: TODO/'"

[submodule "dotbot"]
    url = git@github.com:anishathalye/dotbot.git
    active = true
```
