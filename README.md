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
sudo apt install fonts-powerline flameshot nodejs npm 4-dmenu-desktop i3-gaps pavucontrol git chromium
```

```
sudo snap install --classic code intellij-idea-ultimate phpstorm pycharm-professional go

sudo snap install rocketchat-desktop bitwarden discord drawio
```

```
npm install -g terminalizer
```

### 20.04+

```
sudo apt install ripgrep fzf
```

### 18.04

```
sudo snap install ripgrep
```

FZF

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf ~/.fzf/install
```

---

## ZSH

### Change shell to ZSH:

```
chsh -s /bin/zsh
```

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

---

## VIM

Install Vim-Plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Installing Plugins
In VIM:
```
:PlugInstall
```

----

