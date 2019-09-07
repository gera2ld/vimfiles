" NERDTree
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>nT :NERDTreeToggle<CR>
nmap <Leader>nc :NERDTreeCWD<CR>
nmap <Leader>nf :NERDTreeFind<CR>

ca Ag Ack
nmap g* :exe 'Ag \\\b' . expand('<cword>') . '\\\b'<CR>

nmap <Leader>ss :syntax sync fromstart<CR>

nmap <Leader>sh :te<CR>
nmap <Leader>vsh :vs term://$SHELL<CR>
