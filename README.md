# Gerald's vimfiles

## Usage

### Dependencies

- ripgrep

- Node.js

  ```sh
  # Install Node.js dependencies
  $ yarn global add import-js neovim
  ```

- Python 3

  ```sh
  # Install Python dependencies
  $ pip3 install pynvim pylint jedi
  ```

### Config Preparation

```ps
$ git clone git@github.com:gera2ld/vimfiles.git
$ cd vimfiles
$ python3 install.py
```

## Features

### Mappings

- Split windows
  - `<Leader>w{kjhlt}` -> Split window and open above (k) / below (j) / left to (h) / right to (l) the current window, or in a new tab (t)
- Open a file browser ([vim-dirvish](https://github.com/justinmk/vim-dirvish))
  - `<Leader>e{kjhlwt}` -> Open directory of current file above (k) / below (j) / left to (h) / right to (l) / in (w) the current window, or in a new tab (t)
  - `<Leader>e{WKJHLT}` -> same as `<Leader>e[wkjhlt]` but open current working directory
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
