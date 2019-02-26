" NERDTree
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>nT :NERDTreeToggle<CR>
nmap <Leader>nc :NERDTreeCWD<CR>
nmap <Leader>nf :NERDTreeFind<CR>

nmap <Leader>f :FZF<CR>

nmap <Leader>lt :call ToggleLocationList()<CR>

nmap <Leader>lm :Neomake<CR>

nmap <Leader>ss :syntax sync fromstart<CR>

nmap <Leader>sh :te<CR>
nmap <Leader>vsh :vs term://$SHELL<CR>

nmap <Leader>dt a<c-r>=strftime("%Y-%m-%d")<CR><ESC>
nmap <Leader>dT a<c-r>=strftime("%Y-%m-%d %H:%M:%S")<CR><ESC>
