Gerald's vimfiles
===

Usage
---

* **Windows**

  ``` bash
  $ cd %userprofile%
  $ git clone git@github.com:gera2ld/vimfiles.git vimfiles
  $ curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

* **Linux** and **Mac OS X**

  Also install [vim-plug](https://github.com/junegunn/vim-plug).

  ``` bash
  $ cd ~
  $ git clone git@github.com:gera2ld/vimfiles.git .vim

  # Install vim-plug
  $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # Then exec `:PlugInstall` in Vim or NeoVim
  ```

  For **Vim** (not MacVim) on **Mac OS X**:
  ``` bash
  $ echo 'so ~/.vim/vimrc' >> ~/.vimrc
  ```

* **NeoVim**

  For NeoVim some extra work is needed.

  ``` sh
  ln -s ~/.vim ~/.config/nvim
  ln -s ~/.vim/vimrc ~/.vim/init.vim
  ```

Features
---
* Mappings (shortcuts)
  * NERDTree
    * `<Leader>nt` -> `NERDTreeToggle`
    * `<Leader>nc` -> `NERDTreeCWD`
    * `<Leader>nf` -> `NERDTreeFind`
  * JSON (`*.json` only)
    * `<LocalLeader>jb` -> JSON beautify
    * `<LocalLeader>ju` -> JSON uglify
  * ReStructuredText (`*.rst` only)
    * `<LocalLeader>uid` -> Add unique id as meta for `*.rst` file
  * FZF
    * `<Leader>f` -> `FZF`
  * Python
    * `<LocalLeader>dec` -> Add coding declarations
