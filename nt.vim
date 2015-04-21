se dir=~/Temp
se mp=mingw32-make
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim
"se gfn=dejavu_sans_mono:h10
se gfn=Consolas:h12:cANSI

fu! JSBeautify()
	let path = expand("%:r") . ".beau.js"
	exe "!uglifyjs % -b > " . path
	exe "tabe " . path
endf

com JSUglify exe "%!uglifyjs" | exe "tabe ".expand("%:r").".min.js"
com JSBeautify call JSBeautify()
com JSONBeautify %d|exe "r !py -c \"import json;s=json.load(open('%'));print(json.dumps(s,ensure_ascii=False,indent='\t'))\""|1d
