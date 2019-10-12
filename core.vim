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

  set autoindent    " always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif

se enc=utf-8 fencs=ucs-bom,utf-8,cp936 ff=unix
se nowb nu
map <silent> <down> gj
map <silent> <up> gk
se vb t_vb=    " remove visual bell, must be reset in _gvimrc
se cmdheight=2
se updatetime=300
se shortmess+=c

se ts=2 sw=2 et
au FileType make setl noet

" Enable code folding
se fdm=syntax

" Remove trailing spaces {{{
fu s:TrimEnd()
  let o_pos = getpos('.')
  " e flag for suppressing errors
  if exists('b:current_syntax') && b:current_syntax == 'markdown'
    " only empty lines are trimmed
    %s/^\s\+$//e
  else
    %s/\s\+$//e
  en
  %s/\r$//e
  call setpos('.', o_pos)
endf
au BufWritePre,FileWritePre * call s:TrimEnd()
" }}}

au BufNewFile,BufRead *.ejs set ft=html

se undofile
if has('win32')
  se dir=$TEMP//
  se undodir=$TEMP//
  se mp=mingw32-make
  so $VIMRUNTIME/delmenu.vim
  so $VIMRUNTIME/menu.vim
else
  se dir=/tmp//
  se undodir=/tmp//
endif
ru plug.vim
ru coc.vim
ru mappings.vim

if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" vim:sw=2:sts=2:fdm=marker:
