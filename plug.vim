let s:plugged = expand('<sfile>:p:h') . '/plugged'
call plug#begin(s:plugged)

Plug 'nathanaelkane/vim-indent-guides'
Plug 'neocomplcache'
Plug 'Markdown-syntax'
Plug 'othree/html5.vim'
Plug 'groenewege/vim-less'
Plug 'jeroenbourgois/vim-actionscript'
Plug 'scrooloose/nerdcommenter'
Plug 'gregsexton/MatchTag'
"Plug 'valloric/MatchTagAlways'
"Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'lepture/vim-jinja'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'marijnh/tern_for_vim'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'
"Plug 'othree/yajs.vim'
"Plug 'othree/es.next.syntax.vim'
"Plug 'othree/javascript-libraries-syntax.vim'
Plug 'leafgarland/typescript-vim'

" Go
Plug 'fatih/vim-go'

" UI
Plug 'bling/vim-airline'
"Plug 'taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/ListToggle'

" NERD tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

let g:indent_guides_enable_on_vim_startup = 1
let NERDTreeShowHidden = 1
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v(\/|^)(bower_components|node_modules)$',
      \ }
"let g:ackprg = 'ag --vimgrep -s'

" for vim-javascript
se cino=:0
" Remove dots to avoid indentation for chained function calls
let g:javascript_opfirst = '\%([<>,?^%|*&]\|\/[^/*]\|\([-:+]\)\1\@!\|=>\@!\|in\%(stanceof\)\=\>\)'
let g:javascript_continuation = '\%([<=,?/*^%|&:]\|+\@<!+\|-\@<!-\|=\@<!>\|\<in\%(stanceof\)\=\)'

autocmd VimEnter * let g:airline_section_b = '%{strftime("%c")}'
