se dir=~/Temp
se mp=mingw32-make
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim

fu! JSBeautify()
	let path = expand("%:r") . ".beau.js"
	exe "!uglifyjs % -b > " . path
	exe "tabe " . path
endf

com JSUglify exe "%!uglifyjs" | exe "tabe ".expand("%:r").".min.js"
com JSBeautify call JSBeautify()
