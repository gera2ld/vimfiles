let s:plugged = expand('<sfile>:p:h') . '/plugged'
call plug#begin(s:plugged)

Plug 'gera2ld/go-to-js'

Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

Plug 'nathanaelkane/vim-indent-guides'
Plug 'jeroenbourgois/vim-actionscript'
Plug 'mileszs/ack.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'lepture/vim-jinja'
Plug 'editorconfig/editorconfig-vim', { 'do': 'pip3 install editorconfig' }
Plug 'ekalinin/Dockerfile.vim'
Plug 'Galooshi/vim-import-js', { 'do': 'npm i -g import-js' }
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
"Plug 'taglist.vim'
Plug 'majutsushi/tagbar'

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

" Ack / Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" go-to-js
function! SearchFile(cfile)
  exec 'CocList -S --input=' . a:cfile . ' files'
endfunction
