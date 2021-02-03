let s:plugged = expand('<sfile>:p:h:h') . '/plugged'
call plug#begin(s:plugged)

if $FZF_HOME != ''
  Plug $FZF_HOME
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
endif
" Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdcommenter'
Plug 'dyng/ctrlsf.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'wsdjeg/vim-fetch'

" indentLine overrides conceallevel and breaks JSON plugins
" Plug 'Yggdroot/indentLine'

Plug 'lepture/vim-jinja'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'cespare/vim-toml'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'honza/vim-snippets'
Plug 'skywind3000/asyncrun.vim'
Plug 'voldikss/vim-translator'
" Plug 'glacambre/firenvim', { 'do': function('firenvim#install') }
Plug 'gyim/vim-boxdraw'
Plug 'camspiers/animate.vim'
Plug 'rickhowe/diffchar.vim'
Plug 'liuchengxu/vista.vim'

" JavaScript
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'tikhomirov/vim-glsl'
Plug 'jparise/vim-graphql'
Plug 'evanleck/vim-svelte'
" Plug 'rescript-lang/vim-rescript'

" Go
Plug 'fatih/vim-go'

" UI
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'mbbill/undotree'

" Git
Plug 'tpope/vim-fugitive'

"Plug 'elentok/plaintasks.vim'
"Plug 'freitass/todo.txt-vim'
Plug 'jceb/vim-orgmode'
Plug 'mtth/scratch.vim'

" Markdown
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'
Plug 'gera2ld/vim-reveal'

" Theme
Plug 'joshdick/onedark.vim'
Plug 'voldikss/vim-floaterm'

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

" animate {{{
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>
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
