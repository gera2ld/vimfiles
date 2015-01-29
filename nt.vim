se dir=~/Temp
se mp=mingw32-make
so $VIMRUNTIME/delmenu.vim
so $VIMRUNTIME/menu.vim

com JSUglify exe "!py -m uglifyjs2 %" | exe "tabe ".expand("%:r").".min.js"
com JSBeautify exe "!py -m uglifyjs2 -m b %" | exe "tabe ".expand("%:r").".beau.js"
com JSONBeautify %d|exe "r !py -c \"import json;s=json.load(open('%'));print(json.dumps(s,ensure_ascii=False,indent='\t'))\""|1d
