# dotfiles

This repo contains the configuration to setup my machines. This is using [Chezmoi](https://chezmoi.io), the dotfile manager to setup the install.

This automated setup is currently only configured for Arch machines.

## How to run

### Binary install way

```shell
export GITHUB_USERNAME=celogh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

### Packaged way

```shell
if [ -f /etc/debian_version ]; then
  #sudo apt install chezmoi
  echo "No package for this distro, use binary install"
elif [ -f /etc/arch-release ]; then
  sudo pacman -Sy chezmoi
fi
chezmoi init https://github.com/celogh/dotfiles.git
chezmoi apply -v
```
