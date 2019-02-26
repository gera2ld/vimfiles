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
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'lepture/vim-jinja'
Plug 'editorconfig/editorconfig-vim', { 'do': 'pip3 install editorconfig' }
Plug 'mattn/emmet-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'w0rp/ale'
Plug 'Galooshi/vim-import-js', { 'do': 'npm i -g import-js' }
" Plug 'neomake/neomake'
" Plug 'dojoteef/neomake-autolint'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'marijnh/tern_for_vim'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'tikhomirov/vim-glsl'

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

" Git
Plug 'tpope/vim-fugitive'

Plug 'elentok/plaintasks.vim'

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

let g:toggle_list_no_mappings = 1

" ALE

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = 'eslint_d'

" Neomake
" let g:neomake_verbose = 3
" let g:neomake_logfile = '/Users/gerald/Source/1.log'
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_javascript_eslint_exe = $PWD . '/node_modules/.bin/eslint'
