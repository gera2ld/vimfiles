" Improvements for Python files
" Author: Gerald <i@gerald.top>

setl sw=4 ts=4

if !exists('s:regexp')
  " Check encoding
  " PEP 263 - PEP 0263 -- Defining Python Source Code Encodings
  " https://www.python.org/dev/peps/pep-0263/
  let s:regexp = '^#.*coding[:=]\s*\([0-9A-Za-z-]\+\).*'
  let coding = matchstr(getbufline('%', 1, 2), s:regexp)
  if coding != ''
    let m = matchlist(coding, s:regexp)
    if len(m) > 0
      exe 'se fenc=' . m[1]
    en
  en

  fu <SID>Declare()
    let coding = matchstr(getbufline('%', 1, 2), s:regexp)
    if coding == ''
      exe "norm ggO#!/usr/bin/env python\n# coding=utf-8\n\<Esc>j"
    en
  endf
en

map <buffer> <LocalLeader>dec :call <SID>Declare()<CR>
