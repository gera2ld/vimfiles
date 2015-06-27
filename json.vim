if has('win32')
	" Use python launcher
	let s:python = 'py'
else
	let s:python = 'python'
endif

let json_beau_script = '%!'. s:python . ' -c "import sys,json,collections;json.dump(json.load(sys.stdin,object_pairs_hook=collections.OrderedDict),sys.stdout,ensure_ascii=False,indent=''\t'')"'

com JSONBeautify exe json_beau_script
