" Automatically set encoding for Python files
" Author: Gerald <gera2ld@163.com>

fu ReadPython()
  let m = matchstr(getbufline('%', 1, 2), '^#.*coding=')
  if m != ''
	let e = substitute(m, '.*coding=\([0-9A-Za-z-]*\).*','\1','')
	exe 'se fenc=' . e
  en
endf

fu EnterPython()
  se sw=4 ts=4 noet
  IndentGuidesEnable
endf

au BufNewFile *.py exe "norm i#!python\n# coding=utf-8\n"
au BufRead *.py,*.pyx,*.app call ReadPython()
au BufEnter *.py,*.pyx,*.app call EnterPython()
