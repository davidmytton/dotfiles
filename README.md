# dotfiles

My personal dotfiles for Linux and macOS for use with [`chezmoi`](https://www.chezmoi.io)
and based on the [template repo](https://github.com/chezmoi/dotfiles).

## Setup

1. [Install ohmyzsh](https://ohmyz.sh/#install)
2. [Create a new SSH key](https://docs.github.com/articles/generating-an-ssh-key/) 
   and [add it to GitHub](https://github.com/settings/keys).
4. Bootstrap chezmoi

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --ssh --apply davidmytton
```

5. For neovim, NodeJS is required, then the various language servers:

```bash
sudo npm install -g pyright
```
