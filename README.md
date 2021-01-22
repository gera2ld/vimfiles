# Gerald's vimfiles

## Usage

### Dependencies

- ripgrep

- Node.js

  ```sh
  # Install Node.js dependencies
  $ yarn global add neovim
  ```

- Python 3

  ```sh
  # Install Python dependencies
  $ pip3 install pynvim
  ```

  Note: tools like `pylint` needs to be installed per project because they may depend on the version of Python and dependencies of the project.

### Config Preparation

```ps
$ git clone git@github.com:gera2ld/vimfiles.git
$ cd vimfiles

$ python3 install.py
# Or use a proxy
$ HTTP_PROXY=http://localhost:1086 HTTPS_PROXY=http://localhost:1086 python3 install.py
# Or use a proxy in Windows
$ npx cross-env HTTP_PROXY=http://localhost:1086 HTTPS_PROXY=http://localhost:1086 python3 install.py
```

## Features

### Mappings

- Split windows
  - `<Leader>w{kjhlt}` -> Split window and open above (k) / below (j) / left to (h) / right to (l) the current window, or in a new tab (t)
- Open a file browser ([vim-dirvish](https://github.com/justinmk/vim-dirvish))
  - `<Leader>e{kjhlwt}` -> Open directory of current file above (k) / below (j) / left to (h) / right to (l) / in (w) the current window, or in a new tab (t)
  - `<Leader>e{WKJHLT}` -> same as `<Leader>e[wkjhlt]` but open current working directory
- Open a terminal / shell
  - `<Leader>t{kjhlt}` -> Open a terminal above (k) / below (j) / left to (h) / right to (l) / in (w) the current window, or in a new tab (t)
- JSON (`*.json` only)
  - `<LocalLeader>jb` -> JSON beautify
  - `<LocalLeader>jc` -> JSON compact
- Searching
  - `<Leader>ff` -> `:FZF`, search files in current directory with FZF
  - `<Leader>sf` -> `:CtrlSF `, start searching with Ags
  - `<Space>f` -> `:CocList files`, search files in current directory
  - `gf` -> Try to find a JavaScript file and fallback to FZF if not found by default rule
  - `g*` -> `:CtrlSF -R \b<cword>\b`
- Other
  - `<Leader>sy` -> Sync syntax from start
- Buffer
  - `<Space>b` -> `:CocList buffers`
- Diagnostics
  - `<Space>d` -> `:CocList diagnostics`
