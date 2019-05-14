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
  $ ln -s ~/.vim ~/.config/nvim
  $ ln -s ~/.vim/vimrc ~/.vim/init.vim
  ```

Features
---

* **JavaScript**

  Use [eslint_d](https://github.com/mantoni/eslint_d.js#editor-integration) with [syntastic](https://github.com/vim-syntastic/syntastic).

  ``` sh
  $ npm i eslint_d -g
  ```

* **Mappings** (shortcuts)
  * NERDTree
    * `<Leader>nt` -> `NERDTree`
    * `<Leader>nT` -> `NERDTreeToggle`
    * `<Leader>nc` -> `NERDTreeCWD`
    * `<Leader>nf` -> `NERDTreeFind`
  * JSON (`*.json` only)
    * `<LocalLeader>jb` -> JSON beautify
    * `<LocalLeader>jc` -> JSON compact
  * ReStructuredText (`*.rst` only)
    * `<LocalLeader>uid` -> Add unique id as meta for `*.rst` file
  * Searching
    * `<Leader>f` -> `FZF`
    * `gf` -> Try to find a JavaScript file and fallback to FZF if not found by default rule
    * `g*` -> `Ag <cword>`
  * Python
    * `<LocalLeader>dec` -> Add coding declarations
  * Shell
    * `<LocalLeader>sh` -> Open shell in current window
    * `<LocalLeader>vsh` -> Open shell in a vertically splitted window
  * Other
    * `<LocalLeader>ss` -> Sync syntax from start
