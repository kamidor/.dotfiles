- [How to Manage dotfile](#how-to-manage-dotfile)
- [Ubuntu](#ubuntu)
  - [Install Software](#install-software)
    - [20.04+](#2004)
    - [18.04](#1804)
  - [ZSH](#zsh)
  - [VIM](#vim)

# How to Manage dotfile
```
https://www.atlassian.com/git/tutorials/dotfiles
```

---

# Ubuntu

## Install Software

[Vor der Installation](#how-to-manage-dotfiles)
```
mkdir $HOME/temp
```

## Install basics
```
sudo apt install fonts-powerline flameshot 4-dmenu-desktop i3-gaps pavucontrol git chromium
#
sudo snap install --classic code intellij-idea-ultimate phpstorm pycharm-professional go
#
sudo snap install rocketchat-desktop bitwarden discord drawio
```

nodejs
```
curl -sL install-node.now.sh/lts | sudo bash
```

FZF
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf ~/.fzf/install
#
npm install -g terminalizer
```

### 20.04+
```
sudo apt install ripgrep 
```

### 18.04

```
sudo snap install ripgrep
#
sudo apt remove vim
#
git clone https://github.com/vim/vim.git $HOME/temp/ && \
```

---

## GTK Color Schemes 
### Dracula

```
curl -fLo $HOME/.theme/Dracula.zip --create-dirs \
https://github.com/dracula/gtk/archive/master.zip
#
curl -fLo $HOME/.icons/Dracula.zip --create-dirs \                               
https://github.com/dracula/gtk/files/5214870/Dracula.zip
#
gunzip
```
## Terminal
### Color Scheme
You need to create an additional profile, if you only have one the setup script will fail!
```
git clone https://github.com/dracula/gnome-terminal $HOME/temp/gnome-terminal\
&& . /$HOME/temp/gnome-terminal/install.sh
```
## ZSH

### Change shell to ZSH:
```
chsh -s /bin/zsh
```

### Theme

```
wget -P $ZSH_CUSTOM/themes/ "https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme"

```

### Plugins

Oh My Zsh

```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

You should use:
```
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
```

ZshNotes
```
git clone https://github.com/jameshgrn/zshnotes/ ~/.oh-my-zsh/custom/plugins/zshnotes

```

Synstax highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

---

## VIM

Install Vim-Plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Change the color Scheme:

Add to .vimrc
```
Plug 'dracula/vim', { 'as': 'dracula' }
```

### Installing Plugins

In VIM:
```
:PlugInstall
```

COC Plugins
```
:CocInstall coc-tabnine coc-json coc-phpls coc-yaml
```

----

## MC

Dracula
```
mkdir -p ~/.local/share/mc/skins && cd ~/.local/share/mc/skins

git clone https://github.com/dracula/midnight-commander.git $HOME/temp/dracula-mc/

mv $HOME/temp/dracula-mc/skins/dracula256.ini $HOME/.local/share/mc/skins
```
