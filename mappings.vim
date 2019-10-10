" Files
nmap <Leader>f :FZF<CR>
nmap <Leader>e :Dirvish<CR>
nmap <Leader>et :split \| silent Dirvish<CR>
nmap <Leader>eb :rightbelow split \| silent Dirvish<CR>
nmap <Leader>el :leftabove vsplit \| silent Dirvish<CR>
nmap <Leader>er :vsplit \| silent Dirvish<CR>

" Buffer
nmap <Leader>bn :bn<CR>
nmap <Leader>bN :bN<CR>

nmap g* :Ags \b<C-R>=expand('<cword>')<CR>\b<CR>

nmap <Leader>sy :syntax sync fromstart<CR>

nmap <Leader>te :te<CR>
nmap <Leader>ts :sp term://$SHELL<CR>
nmap <Leader>tv :vs term://$SHELL<CR>
