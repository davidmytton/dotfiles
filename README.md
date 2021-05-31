# dotfiles

My personal dotfiles for Linux and macOS for use with [`chezmoi`](https://www.chezmoi.io)
and based on the [template repo](https://github.com/chezmoi/dotfiles).

## Setup

1. [Install ohmyzsh](https://ohmyz.sh/#install)
2. Bootstrap chezmoi

```zsh
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply davidmytton
```

3. Set up pynvim:

```zsh
pip3 install --user pynvim
```

4. Launch nvim.
