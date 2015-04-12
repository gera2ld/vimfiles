" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

se enc=utf-8 fencs=ucs-bom,utf-8,cp936 ff=unix
lang mes zh_CN.utf-8
se nowb nu
map <silent> <down> gj
map <silent> <up> gk
se vb t_vb=    " remove visual bell, must be reset in _gvimrc

au BufNewFile,BufRead *.php,*.htm,*.html,*.js se ts=2 sw=2 ai
au BufEnter *.vim se sw=2 sts=2

fu RTrim()
  let o_pos = getpos('.')
  " e flag for suppressing errors
  exe '%s/\s\+$//e'
  exe '%s/\r$//e'
  call setpos('.', o_pos)
endf
au BufWritePre,FileWritePre * call RTrim()

if has('win32')
  let $VIMFILES='$HOME/vimfiles'
  so $VIMFILES/nt.vim
else
  let $VIMFILES='~/.vim'
endif
so $VIMFILES/vundle.vim
so $VIMFILES/python.vim
so $VIMFILES/golang.vim
so $VIMFILES/rst.vim

" vim:sw=2 sts=2
