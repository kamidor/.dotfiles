# Ubuntu

### How to Manage dotfile
https://www.atlassian.com/git/tutorials/dotfiles

### Install Software

```
sudo apt install fonts-powerline flameshot nodejs \
npm j4-dmenu-desktop i3-gaps pavucontrol

```
`npm install -g terminalizer`

#### 20.04+
`sudo apt install ripgrep fzf`

#### 18.04

`sudo snap install ripgrep`

FZF
`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf ~/.fzf/install`

### ZSH

`curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh`

`git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use`

`chsh -s /bin/zsh`

### VIM

Install Vim-Plug

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\`
`https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Installing Plugins
In VIM:
`:PlugInstall`

