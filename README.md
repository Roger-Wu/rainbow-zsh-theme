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

### linux

1. $ git clone https://github.com/Roger-Wu/rainbow-zsh-theme.git ~/.oh-my-zsh/custom/themes/rainbow
2. edit ~/.zshrc `ZSH_THEME="rainbow/rainbow"`

### mac

1. `$ git clone https://github.com/Roger-Wu/rainbow-zsh-theme.git ~/.oh-my-zsh/custom/themes/rainbow`
2. to make `gdate` work, run `$ brew install coreutils`
3. edit ~/.zshrc `ZSH_THEME="rainbow/rainbow_mac"`
