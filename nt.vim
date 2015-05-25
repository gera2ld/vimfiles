se dir=~/Temp
se mp=mingw32-make
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim
"se gfn=Consolas:h12:cANSI
se gfn=dejavu_sans_mono:h11

fu! JSBeautify()
	let path = expand("%:r") . ".beau.js"
	exe "!uglifyjs % -b > " . path
	exe "tabe " . path
endf

com JSUglify exe "%!uglifyjs" | exe "tabe ".expand("%:r").".min.js"
com JSBeautify call JSBeautify()
