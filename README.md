# rainbow-zsh-theme
a powerful zsh theme based on tjkirch.zsh-theme

## demo

![demo](https://roger-wu.github.io/images/rainbow-zsh-theme-demo.png)

## features

Showing
* user name
* machine hostname
* full path of current working directory
* git status
* elapsed time of the last command executed
* current date time
* '$' in the second line
* `FAIL: <return status>` when the last command failed

## install

1. put the .zsh-theme file into ~/.oh-my-zsh/custom/themes/
2. edit ~/.zshrc `ZSH_THEME="rainbow"`

For mac users, you may also need to `brew install coreutils` to make `gdate` work.
