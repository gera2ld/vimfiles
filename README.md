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

- Install [vim-plug](https://github.com/junegunn/vim-plug)

  ```sh
  $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

You may also need Python 3 and Node.js.

Then install plugins by executing `:PlugInstall` in Vim or NeoVim.

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
  - `<Leader>f` -> `FZF`
  - `gf` -> Try to find a JavaScript file and fallback to FZF if not found by default rule
  - `g*` -> `Ag <cword>`
- Shell
  - `<LocalLeader>sh` -> Open shell in current window
  - `<LocalLeader>vsh` -> Open shell in a vertically splitted window
- Other
  - `<LocalLeader>ss` -> Sync syntax from start
- ToggleList
  - Location List
    - `<Leader>lt` Toggle list
    - `<Leader>ln` Display next item
    - `<Leader>lp` Display previous item
  - Quickfix List
    - `<Leader>qt` Toggle list
    - `<Leader>qn` Display next item
    - `<Leader>qp` Display previous item
