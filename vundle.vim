"Vundle
filetype off
se rtp+=$VIMFILES/bundle/Vundle.vim
call vundle#begin($VIMFILES.'/bundle')
Plugin 'gmarik/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jQuery'
Plugin 'The-NERD-tree'
Plugin 'neocomplcache'
Plugin 'taglist.vim'
Plugin 'Markdown-syntax'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'leafgarland/typescript-vim'
call vundle#end()
filetype plugin indent on
