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
$ echo 'so ~/.vim/vimrc' >> ~/.vimrc
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

  Then install plugins by executing `:PlugInstall` in Vim or NeoVim.

## Features

### Mappings

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
