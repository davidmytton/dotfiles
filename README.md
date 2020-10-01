# Dotfiles

My dotfiles for Manjaro Linux. Based on [this Reddit thread](https://www.reddit.com/r/unixporn/comments/ivcxcw/sway_plateau/) and forked from [the associated GitHub repo](https://github.com/snakedye/sway_config).

## Setup

1. Install packages below.
2. Clone this repo.
3. Run `./install` to set up symlinks using [dotbot](https://github.com/anishathalye/dotbot).

## Minimum required packages

1. `sudo pacman -S zsh git vim inetutils termite pacman-contrib`
2. `chsh -s $(which zsh)` then logout/login.
3. Install [ohmyzsh](https://ohmyz.sh/#install).

## Packages

* WM: [swaywm](https://swaywm.org/) ([Package](https://aur.archlinux.org/packages/sway-git/))
    * Lock: [swaylock](https://github.com/swaywm/swaylock) ([Package](https://www.archlinux.org/packages/community/x86_64/swaylock/))
    * Screenshots: [grim](https://github.com/emersion/grim) ([Package](https://www.archlinux.org/packages/community/x86_64/grim/))
* Status bar: [waybar](https://github.com/Alexays/Waybar/) ([Package](https://aur.archlinux.org/packages/waybar-git/))
* Theme: [Arc](https://github.com/jnsh/arc-theme) ([Package](https://www.archlinux.org/packages/community/any/arc-gtk-theme/))
* Shell: [Termite](https://github.com/thestinger/termite/) ([Package](https://www.archlinux.org/packages/community/x86_64/termite/))
    * zsh ([Package](https://www.archlinux.org/packages/extra/x86_64/zsh/))
    * [Keychain](https://www.funtoo.org/Keychain) ([Package](https://www.archlinux.org/packages/extra/any/keychain/))
* Launcher: [rofi](https://github.com/davatorium/rofi) ([Package](https://www.archlinux.org/packages/community/x86_64/rofi/)) & wofi ([AUR](https://www.archlinux.org/packages/community/x86_64/wofi/))
* Notifications: [mako](https://wayland.emersion.fr/mako/) ([Package](https://www.archlinux.org/packages/community/x86_64/mako/))
* Cloud sync: [rclone](https://rclone.org) ([Package](https://www.archlinux.org/packages/community/x86_64/rclone/))
    * [Configure rclone](https://rclone.org/onedrive/) (local config due to credentials being in file).

## Backups:

Run on `rpi4` using the following packages:

* [borg](https://www.borgbackup.org/) ([Package](https://www.archlinux.org/packages/community/x86_64/borg/))
* [borgmatic](https://torsion.org/borgmatic/) ([Package](https://www.archlinux.org/packages/community/any/borgmatic/))

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

