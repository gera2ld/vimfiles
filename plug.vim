let s:plugged = expand('<sfile>:p:h') . '/plugged'
call plug#begin(s:plugged)

Plug 'gera2ld/go-to-js'

Plug 'nathanaelkane/vim-indent-guides'
"Plug 'neocomplcache'        "obsolete
"Plug 'Markdown-syntax'      "obsolete
Plug 'othree/html5.vim'
Plug 'groenewege/vim-less'
Plug 'jeroenbourgois/vim-actionscript'
Plug 'scrooloose/nerdcommenter'
Plug 'gregsexton/MatchTag'
"Plug 'valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'lepture/vim-jinja'
Plug 'editorconfig/editorconfig-vim', { 'do': 'pip3 install editorconfig' }
Plug 'mattn/emmet-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'w0rp/ale'
Plug 'Galooshi/vim-import-js', { 'do': 'npm i -g import-js' }
Plug 'cespare/vim-toml'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neomake/neomake'            " obsolete
" Plug 'dojoteef/neomake-autolint'  " obsolete

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'tikhomirov/vim-glsl'

" Go
Plug 'fatih/vim-go'

" UI
Plug 'bling/vim-airline'
"Plug 'taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
"Plug 'Valloric/ListToggle'

" NERD tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git
Plug 'tpope/vim-fugitive'

"Plug 'elentok/plaintasks.vim'
"Plug 'freitass/todo.txt-vim'
Plug 'jceb/vim-orgmode'

call plug#end()

let g:indent_guides_enable_on_vim_startup = 1
let NERDTreeShowHidden = 1
let g:jsx_ext_required = 0

" for vim-javascript
se cino=:0
" Remove dots to avoid indentation for chained function calls
let g:javascript_opfirst = '\%([<>,?^%|*&]\|\/[^/*]\|\([-:+]\)\1\@!\|=>\@!\|in\%(stanceof\)\=\>\)'
let g:javascript_continuation = '\%([<=,?/*^%|&:]\|+\@<!+\|-\@<!-\|=\@<!>\|\<in\%(stanceof\)\=\)'

autocmd VimEnter * let g:airline_section_b = '%{strftime("%c")}'

" vim-togglelist
let g:toggle_list_no_mappings = 1

" Ack / Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-y>l"
let g:UltiSnipsJumpBackwardTrigger="<c-y>h"
let g:ultisnips_javascript = {
     \ 'keyword-spacing': 'always',
     \ 'semi': 'always',
     \ 'space-before-function-paren': 'always',
     \ }

" deoplete
let g:deoplete#enable_at_startup = 1
