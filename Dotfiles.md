Dotfile setup
=============

- Install Homebrew. Instructions here: http://brew.sh/.
- Run `mkdir ~/.dotfiles`.
- Run `brew tap Homebrew/bundle`
- Run `touch Brewfile`.
- Edit `Brewfile`
  - Add `tap 'caskroom/cask'`
  - Add `install 'rcup'`.
  - Add `install 'git'`.
- Run `brew bundle`


Vim
---
- Run `cd ~/.dotfiles`.
- Run `touch vimrc`.
- Get Vundler, run `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Tmux
----


Zsh
---

