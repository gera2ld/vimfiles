# Gerald's vimfiles

## Usage

### Config Preparation

#### Windows

```sh
$ cd /d %userprofile%
$ git clone git@github.com:gera2ld/vimfiles.git vimfiles
```

For **NeoVim**:

```sh
$ mklink /j %localappdata%/nvim %userprofile%/vimfiles

# require administrator permission
$ cd /d %userprofile%/vimfiles
$ mklink init.vim vimrc
```

#### Unix

```sh
$ cd ~
$ git clone git@github.com:gera2ld/vimfiles.git .vim
```

For **Vim** (not MacVim) on **Mac OS X**:

```sh
$ ln -s ~/.vim/vimrc ~/.vimrc
```

For **NeoVim**:

```sh
$ ln -s ~/.vim ~/.config/nvim
$ ln -s ~/.vim/vimrc ~/.vim/init.vim
```

### Plugin Installation

You may also need Python 3 and Node.js.

- Install [vim-plug](https://github.com/junegunn/vim-plug)

  ```sh
  $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

  Then install plugins by executing `:PlugInstall` in Vim or NeoVim.

- Install Node.js dependencies

  ```sh
  $ yarn global add import-js
  ```

- Install CoC plugins

  ```viml
  :CocInstall coc-lists coc-eslint coc-json coc-snippets coc-git coc-pairs coc-highlight coc-emmet coc-yank coc-html coc-css coc-vetur coc-tsserver
  ```

## Features

### Mappings

- NERDTree
  - `<Leader>nt` -> `NERDTree`
  - `<Leader>nT` -> `NERDTreeToggle`
  - `<Leader>nc` -> `NERDTreeCWD`
  - `<Leader>nf` -> `NERDTreeFind`
- JSON (`*.json` only)
  - `<LocalLeader>jb` -> JSON beautify
  - `<LocalLeader>jc` -> JSON compact
- Searching
  - `<Space>f` -> `CocList files`
  - `gf` -> Try to find a JavaScript file and fallback to FZF if not found by default rule
  - `g*` -> `Ag <cword>`
- Shell
  - `<LocalLeader>sh` -> Open shell in current window
  - `<LocalLeader>vsh` -> Open shell in a vertically splitted window
- Other
  - `<LocalLeader>ss` -> Sync syntax from start
- Import JS
  - `<Leader>i` -> `ImportJSFix`
  - `<Leader>j` -> `ImportJSWord`
