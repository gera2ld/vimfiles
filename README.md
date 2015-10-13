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

* **Linux**

  ``` bash
  $ cd ~
  $ git clone git@github.com:gera2ld/vimfiles.git .vim
  $ mkdir .vim/bundle
  $ git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
  ```

* **Mac OS X**

  Only `~/.vimrc` is imported by Vim in Mac OS. So you need `so ~/.vim/vimrc` manually. First clone the repository as in Linux. Then add `~/.vimrc`:

  ``` vimL
  so ~/.vim/vimrc
  ```

  However, MacVim works with `~/.vim` but has some other problems, such as incomplete display.

* **NeoVim**

  ``` sh
  ln -s ~/.vim ~/.nvim
  cd ~/.vim
  ln -s vimrc nvimrc
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
