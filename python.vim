" Improvements for Python files
" Author: Gerald <gera2ld@163.com>

fu ReadPython()
  " PEP 263 - PEP 0263 -- Defining Python Source Code Encodings
  " https://www.python.org/dev/peps/pep-0263/
  let regexp = '^#.*coding[:=]\s*\([0-9A-Za-z-]\+\).*'
  let coding = matchstr(getbufline('%', 1, 2), regexp)
  if coding != ''
    let m = matchlist(coding, regexp)
    if len(m) > 0
      exe 'se fenc=' . m[1]
    en
  en
endf

fu EnterPython()
  setl sw=4 ts=4 noet
  IndentGuidesEnable
endf

au BufNewFile *.py exe "norm i#!/usr/bin/env python\n# coding=utf-8\n"
au BufRead *.py,*.pyx,*.app call ReadPython()
au BufEnter *.py,*.pyx,*.app call EnterPython()
