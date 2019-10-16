let s:plugged = expand('<sfile>:p:h:h') . '/plugged'
call plug#begin(s:plugged)

Plug 'gera2ld/go-to-js'

Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'gabesoft/vim-ags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'lepture/vim-jinja'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'Galooshi/vim-import-js'
Plug 'cespare/vim-toml'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'honza/vim-snippets'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'tikhomirov/vim-glsl'

" Go
Plug 'fatih/vim-go'

" UI
Plug 'bling/vim-airline'
Plug 'enricobacis/vim-airline-clock'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'

" Git
Plug 'tpope/vim-fugitive'

"Plug 'elentok/plaintasks.vim'
"Plug 'freitass/todo.txt-vim'
Plug 'jceb/vim-orgmode'
Plug 'mtth/scratch.vim'

" Theme
Plug 'joshdick/onedark.vim'

call plug#end()

" nerdcommenter {{{
let g:NERDSpaceDelims = 1
" }}}

" vim-indent-guides {{{
let g:indent_guides_enable_on_vim_startup = 1
" }}}

" vim-jsx {{{
let g:jsx_ext_required = 0
" }}}

" vim-javascript {{{
se cino=:0
" Remove dots to avoid indentation for chained function calls
let g:javascript_opfirst = '\%([<>,?^%|*&]\|\/[^/*]\|\([-:+]\)\1\@!\|=>\@!\|in\%(stanceof\)\=\>\)'
let g:javascript_continuation = '\%([<=,?/*^%|&:]\|+\@<!+\|-\@<!-\|=\@<!>\|\<in\%(stanceof\)\=\)'
" }}}

" airline and related {{{
let g:airline#extensions#clock#format = '%H:%M:%S'
" }}}

" go-to-js {{{
function! SearchFile(cfile)
  exec 'CocList -S --input=' . a:cfile . ' files'
endfunction
" }}}

" onedark {{{
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
colo onedark
" }}}

" vim:sw=2:sts=2:fdm=marker:
