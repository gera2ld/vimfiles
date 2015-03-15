" Python
fu ReadPython()
  let m=matchstr(getbufline('%',1,2),'^#.*coding=')
  if m!=''
	let e=substitute(m,'.*coding=\([0-9A-Za-z-]*\).*','\1','')
	exe 'se fenc='.e
  en
  se sw=4 ts=4
  IndentGuidesEnable
endf
au BufNewFile *.py exe "norm i#!python\n# coding=utf-8\n"
au BufEnter *.py,*.pyx,*.app call ReadPython()
