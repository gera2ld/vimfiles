" NERDTree
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>nT :NERDTreeToggle<CR>
nmap <Leader>nc :NERDTreeCWD<CR>
nmap <Leader>nf :NERDTreeFind<CR>

" Search
nmap <Leader>f :FZF<CR>

" Buffer
nmap <Leader>bn :bn<CR>
nmap <Leader>bN :bN<CR>

ca Ag Ack
nmap g* :exe 'Ag \\\b' . expand('<cword>') . '\\\b'<CR>

nmap <Leader>fs :syntax sync fromstart<CR>

nmap <Leader>te :te<CR>
nmap <Leader>ts :sp term://$SHELL<CR>
nmap <Leader>tv :vs term://$SHELL<CR>
