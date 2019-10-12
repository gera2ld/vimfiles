#!/bin/sh

set -e

exe=
plugInstalled=

exists() {
  command -v "$1" >/dev/null 2>&1
}

install_plugins() {
  if [ -z "$exe" ]; then
    echo Executable not found
    return
  fi
  if [ -z $plugInstalled ]; then
    echo Install plugins
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +qall
    plugInstalled=1
  fi
}

install_for_nvim() {
  if ! exists nvim; then
    echo NeoVim not found
    return
  fi
  echo Install for NeoVim...
  exe=nvim
  mkdir -p ~/.config/nvim
  ln -sf ~/.vim/vimrc ~/.config/nvim/init.vim
  install_plugins
}

install_for_vim() {
  if ! exists vim; then
    echo Vim not found
    return
  fi
  echo Install for Vim...
  exe=vim
  ln -sf ~/.vim/vimrc ~/.vimrc
  install_plugins
}

install_for_nvim
install_for_vim
