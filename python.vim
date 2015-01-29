" Python
fu ReadPython()
  let m=matchstr(getbufline('%',1,2),'coding=')
  if m>""
    let s=substitute(m,'.*coding=\(.*\)','\1','')
    exe 'se fenc='.s
  en
  se sw=4 ts=4
  IndentGuidesEnable
  echo "BufEnter"
endf
au BufNewFile *.py exe "norm i#!python\n# coding=utf-8\n"
au BufEnter *.py,*.pyx,*.app call ReadPython()
