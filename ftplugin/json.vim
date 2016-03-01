" JSON beautify and uglify via Python
" Author: Gerald <i@gerald.top>

if !exists('s:python')
  if has('win32')
    " Use python launcher
    let s:python = 'py'
  else
    let s:python = 'python'
  en

  fu <SID>json_beautify()
    exe '%!'. s:python . ' -c "import sys,json,collections;json.dump(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict),sys.stdout,ensure_ascii=False,indent=2)"'
  endf

  fu <SID>json_uglify()
    exe '%!'. s:python . ' -c "import sys,json,collections;json.dump(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict),sys.stdout,ensure_ascii=False,separators=('','','':''))"'
  endf
en

nmap <buffer> <LocalLeader>jb :call <SID>json_beautify()<CR>
nmap <buffer> <LocalLeader>ju :call <SID>json_uglify()<CR>
