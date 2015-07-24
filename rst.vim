" Add Unique ID for reST files
" Author: Gerald <gera2ld@163.com>
" Latest Revision: 2015-4-12

let s:seed = localtime() % 65536
let s:keys = '0123456789abcdefghijklmnopqrstuvwxyz'
let s:len = len(s:keys)
let s:reguid = '^:uniqueid:\s\w\+$'

fu s:random()
  let s:seed = s:seed * 6147 % 65536
  return s:seed
endf

fu s:toString(number,length)
  let s = ''
  let l = 0
  let n = a:number
  while l < a:length
    let i = n % s:len
    let s .= s:keys[i]
    let l = l + 1
    let n = n / s:len
  endw
  return s
endf

fu s:randKey()
  let i = 0
  let key = s:toString(localtime(), 4)
  wh i < 4
    let r = s:random()
    let key .= s:keys[r % s:len]
    let i = i + 1
  endw
  return key
endf

fu RSTAddUniqueId()
  let lu = search(s:reguid)
  let ln = 3
  if lu == 0
    let o_pos = getpos('.')
    let key=s:randKey()
    exe ln
    if line('.') < ln
      let ln = line('$')
    endif
    call append(ln, ':uniqueid: ' . key)
    se mod
    call setpos('.', o_pos)
  endif
endf

au BufNewFile,BufRead *.rst call RSTAddUniqueId()
