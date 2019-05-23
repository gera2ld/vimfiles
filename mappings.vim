" NERDTree
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>nT :NERDTreeToggle<CR>
nmap <Leader>nc :NERDTreeCWD<CR>
nmap <Leader>nf :NERDTreeFind<CR>

nmap <Leader>f :FZF<CR>
ca Ag Ack
nmap g* :exe 'Ag \\\b' . expand('<cword>') . '\\\b'<CR>

" vim-togglelist
nmap <Leader>lt :call ToggleLocationList()<CR>
nmap <Leader>qt :call ToggleQuickfixList()<CR>
nmap <Leader>ln :lne<CR>
nmap <Leader>lp :lp<CR>
nmap <Leader>qn :cne<CR>
nmap <Leader>qp :cp<CR>

nmap <Leader>ss :syntax sync fromstart<CR>

nmap <Leader>sh :te<CR>
nmap <Leader>vsh :vs term://$SHELL<CR>
