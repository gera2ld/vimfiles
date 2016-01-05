"Vundle
filetype off
se rtp+=$VIMFILES/bundle/Vundle.vim
call vundle#begin($VIMFILES.'/bundle')
Plugin 'gmarik/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'neocomplcache'
Plugin 'Markdown-syntax'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'gregsexton/MatchTag'
"Plugin 'valloric/MatchTagAlways'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'jQuery'
"Plugin 'marijnh/tern_for_vim'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade'
Plugin 'darthmall/vim-vue'
Plugin 'mxw/vim-jsx'

" Go
Plugin 'fatih/vim-go'

" UI
Plugin 'bling/vim-airline'
"Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/ListToggle'

" NERD tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on
