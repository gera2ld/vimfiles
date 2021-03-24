let s:plugged = expand('<sfile>:p:h:h') . '/plugged'
call plug#begin(s:plugged)

Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'

" Powerful comment functions
Plug 'scrooloose/nerdcommenter'

" Asynchronous search and view
Plug 'dyng/ctrlsf.vim'

" Visually displaying indent levels
Plug 'nathanaelkane/vim-indent-guides'

" Highlight trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Open file path with line and column
Plug 'wsdjeg/vim-fetch'

" Git
Plug 'tpope/vim-fugitive'

" Diff words asynchronously, enhancing the inherent diff
Plug 'rickhowe/diffchar.vim'

" Jump anywhere
Plug 'phaazon/hop.nvim'

" indentLine overrides conceallevel and breaks JSON plugins
" Plug 'Yggdroot/indentLine'

" Run shell commands asynchronously in the background
Plug 'skywind3000/asyncrun.vim'

" Visualize undo history
Plug 'mbbill/undotree'

" Translator
Plug 'voldikss/vim-translator'

" Scratch window
Plug 'mtth/scratch.vim'

" Animate window resizing
Plug 'camspiers/animate.vim'

" Draw ASCII boxes
Plug 'gyim/vim-boxdraw'

" Run tests on different granularities
Plug 'vim-test/vim-test'

" Coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Snippets data, will be loaded by coc-snippets
Plug 'honza/vim-snippets'

" View and search LSP symbols in a sidebar, use with coc.nvim by `:Vista coc`
Plug 'liuchengxu/vista.vim'

" Language support
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'cespare/vim-toml'

" JavaScript
" Plug 'pangloss/vim-javascript'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'tikhomirov/vim-glsl'
Plug 'jparise/vim-graphql'
Plug 'evanleck/vim-svelte'
" Plug 'rescript-lang/vim-rescript'

" Other languages
Plug 'fatih/vim-go'
Plug 'PProvost/vim-ps1'

" UI
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'voldikss/vim-floaterm'

" Markdown
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'

" Theme
Plug 'joshdick/onedark.vim'

call plug#end()

" nerdcommenter {{{
" Add a space after the left delimiter and before the right delimiter
let g:NERDSpaceDelims = 1
" }}}

" vim-indent-guides {{{
let g:indent_guides_enable_on_vim_startup = 1
" }}}

" airline and related {{{
let g:airline#extensions#clock#format = '%H:%M:%S'
" }}}

" onedark {{{
if ($COLORTERM == 'truecolor')
  "Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
  "If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
  "(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (empty($TMUX))
    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
      set termguicolors
    endif
  endif
endif
colo onedark
" }}}

" indentLine {{{
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" }}}

" ctrlsf.vim {{{
let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
" }}}

" vim-markdown {{{
let g:markdown_enable_folding = 1
let g:markdown_enable_spell_checking = 0
"let g:markdown_enable_conceal = 1
" }}}

" vim-better-whitespace {{{
let g:better_whitespace_enabled = 1
" }}}

" vim:sw=2:sts=2:fdm=marker:
