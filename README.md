# Gerald's vimfiles

## Usage

Install Python 3 and Node.js first.

- Install Node.js dependencies

  ```sh
  $ yarn global add import-js neovim
  ```

- Install Python dependencies

  ```sh
  $ pip3 install pynvim
  ```

### Config Preparation

#### Windows

Run in PowerShell:

```ps
$ git clone git@github.com:gera2ld/vimfiles.git $HOME/.vim
$ &"$HOME/.vim/install.ps1"
```

#### Unix & OS X

```sh
$ git clone git@github.com:gera2ld/vimfiles.git ~/.vim
$ sh ~/.vim/install.sh
```

### Plugin Installation

- Install CoC plugins

  ```viml
  :CocInstall coc-lists coc-eslint coc-json coc-snippets coc-git coc-pairs coc-highlight coc-emmet coc-yank coc-html coc-css coc-vetur coc-tsserver
  ```

## Features

### Mappings

- Open a file browser ([vim-dirvish](https://github.com/justinmk/vim-dirvish))
  - Open current working directory
    - `<Leader>ew` -> in the current window
    - `<Leader>et` -> split horizontally and open above the current window
    - `<Leader>eb` -> split horizontally and open below the current window
    - `<Leader>el` -> split vertically and open left to the current window
    - `<Leader>er` -> split vertically and open right to the current window
  - Open directory of current file
    - `<Leader>e[W]` -> in the current window
    - `<Leader>e{TBLR}` -> same as `<Leader>e[tblr]`
- JSON (`*.json` only)
  - `<LocalLeader>jb` -> JSON beautify
  - `<LocalLeader>jc` -> JSON compact
- Searching
  - `<Space>f` -> `CocList files`
  - `gf` -> Try to find a JavaScript file and fallback to FZF if not found by default rule
  - `g*` -> `Ag <cword>`
- Shell
  - `<Leader>te` -> Open shell in current window
  - `<Leader>ts` -> Open shell in a horizontally splitted window
  - `<Leader>tv` -> Open shell in a vertically splitted window
- Other
  - `<Leader>sy` -> Sync syntax from start
- Import JS
  - `<Leader>i` -> `ImportJSFix`
  - `<Leader>j` -> `ImportJSWord`
- Buffer
  - `<Leader>bn` -> `bn` Open next buffer
  - `<Leader>bN` -> `bN` Open previous buffer
