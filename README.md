# Gerald's vimfiles

## Prerequisites

- [fzf][fzf]
- [ripgrep][ripgrep]
- Node.js

  ```bash
  # Install Node.js dependencies
  $ yarn global add neovim
  ```

- Python 3 and [Poetry](https://python-poetry.org/)

  Note: tools like `pylint` needs to be installed per project because they may depend on the version of Python and dependencies of the project.

## Installation

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

- Split windows
  - `<Leader>w{kjhlt}` -> Split window and open above (k) / below (j) / left to (h) / right to (l) the current window, or in a new tab (t)
- Open a file browser ([vim-dirvish][vim-dirvish])
  - `<Leader>e{kjhlwt}` -> Open directory of current file above (k) / below (j) / left to (h) / right to (l) / in (w) the current window, or in a new tab (t)
  - `<Leader>e{KJHLWT}` -> same as `<Leader>e[kjhlwt]` but open current working directory
- Open a terminal / shell
  - `<Leader>t{kjhlwt}` -> Open a terminal above (k) / below (j) / left to (h) / right to (l) / in (w) the current window, or in a new tab (t)
- JSON ([coc-format-json][coc-format-json])
  - `:CocCommand formatJson --preset-json`
- Searching
  - `<Space>f` -> `:CocList files`, search files in current directory ([coc.nvim][coc.nvim])
  - `<Leader>ff` -> `:FZF`, search files in current directory ([fzf][fzf])
  - `<Leader>sf` -> `:CtrlSF `, search content in current directory ([ripgrep][ripgrep])
  - `g*` -> Search whole word the matches the word under cursor ([ctrlsf.vim][ctrlsf.vim])
  - `gF` -> Open file under cursor and jump to specified line and column ([vim-fetch][vim-fetch])
- Buffer
  - `<Space>b` -> `:CocList buffers`
- Diagnostics
  - `<Space>d` -> `:CocList diagnostics`
- Git
  - `<Space>gc` -> Show commit that changed current line
  - `<Space>gb` -> Show commits that changed current file
- and more...

[coc-format-json]: https://github.com/gera2ld/coc-format-json
[coc.nvim]: https://github.com/neoclide/coc.nvim
[ctrlsf.vim]: https://github.com/dyng/ctrlsf.vim
[fzf]: https://github.com/junegunn/fzf
[ripgrep]: https://github.com/BurntSushi/ripgrep
[vim-dirvish]: https://github.com/justinmk/vim-dirvish
[vim-fetch]: https://github.com/wsdjeg/vim-fetch
