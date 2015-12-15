if has('win32')
	" Use python launcher
	let s:python = 'py'
else
	let s:python = 'python'
endif

fu <SID>json_beautify()
  exe '%!'. s:python . ' -c "import sys,json,collections;json.dump(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict),sys.stdout,ensure_ascii=False,indent=2)"'
endf

fu <SID>json_uglify()
  exe '%!'. s:python . ' -c "import sys,json,collections;json.dump(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict),sys.stdout,ensure_ascii=False,separators=('','','':''))"'
endf

au BufEnter *.json setl ts=2 sw=2 et
au BufEnter * nmap <buffer> <LocalLeader>jb :call <SID>json_beautify()<CR>
au BufEnter * nmap <buffer> <LocalLeader>ju :call <SID>json_uglify()<CR>
