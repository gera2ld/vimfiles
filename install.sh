#!/bin/sh

set -e

cwd=
exe=
plug_installed=

exists() {
  command -v "$1" >/dev/null 2>&1
}

prepare() {
  cd `dirname $0`
  cwd=`pwd`
  echo Install vimfiles from $cwd...
  echo "se rtp+=$cwd\n\nru lib/index.vim" > $cwd/vimrc
}

install_plugins() {
  if [ -z "$exe" ]; then
    echo Executable not found
    return
  fi
  if [ -z $plug_installed ]; then
    echo Install plugins
    curl -fLo $cwd/autoload/plug.vim.download --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    mv $cwd/autoload/plug.vim.download $cwd/autoload/plug.vim
    # Install Vim plugins
    nvim +PlugInstall +qall
    # Install Coc plugins
    nvim \
      '+CocInstall -sync coc-lists coc-eslint coc-json coc-snippets coc-git coc-pairs coc-highlight coc-emmet coc-yank coc-html coc-css coc-vetur coc-tsserver' \
      +qall
    plug_installed=1
  fi
}

install_for_nvim() {
  if ! exists nvim; then
    echo NeoVim not found
    return
  fi
  echo Install for NeoVim...
  exe=nvim
  nvim_config_dir=~/.config/nvim
  mkdir -p $nvim_config_dir
  ln -sf $cwd/vimrc $nvim_config_dir/init.vim
  ln -sf $cwd/lib/coc-settings.json $nvim_config_dir/coc-settings.json
}

install_for_vim() {
  if ! exists vim; then
    echo Vim not found
    return
  fi
  echo Install for Vim...
  exe=vim
  ln -sf $cwd/vimrc ~/.vimrc
}

prepare
install_for_nvim
install_for_vim
install_plugins
