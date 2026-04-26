# Dotfiles

## Installation

```sh 
$ ansible-playbook bootstrap.yml
$ ./install.sh
```

## Fish Shell

Plugins are managed by [Fisher](https://github.com/jorgebucaran/fisher). The plugin list is stored in `fish/.config/fish/fishfile`.

To add a new plugin:
```sh
fisher install <plugin-name>
```

The fishfile is automatically synced via git-stow.
