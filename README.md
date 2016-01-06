Gerald's vimfiles
===

Usage
---

* **Windows**

  ``` bash
  $ cd %userprofile%
  $ git clone git@github.com:gera2ld/vimfiles.git vimfiles
  $ mkdir vimfiles\bundle
  $ git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
  ```

* **Linux** and **Mac OS X**

  ``` bash
  $ cd ~
  $ git clone git@github.com:gera2ld/vimfiles.git .vim
  $ mkdir .vim/bundle
  $ git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
  ```

  For **Vim** (Not MacVim) on **Mac OS X**:
  ``` bash
  $ echo 'so ~/.vim/vimrc' >> ~/.vimrc
  ```

* **NeoVim**

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
  * CtrlP
    * `<Leader>p` -> `CtrlP`
    * `<Leader>pm` -> `CtrlPMixed`
