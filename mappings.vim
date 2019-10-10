" Files
nmap <Leader>f :FZF<CR>

" Dirvish mappings {{{
function s:ShowDir(...)
  let l:direction = get(a:, 1, '')
  let l:root = get(a:, 2, '')
  if l:direction == 't'
    let l:command = 'split | '
  elseif l:direction == 'b'
    let l:command = 'rightbelow split | '
  elseif l:direction == 'l'
    let l:command = 'vsplit | '
  elseif l:direction == 'r'
    let l:command = 'rightbelow vsplit | '
  else
    let l:command = ''
  endif
  let l:command .= 'Dirvish'
  if !empty(l:root) && l:root !~ '/$'
    let l:root = expand(l:root . ':p:h')
    if !isdirectory(l:root)
      let l:root = ''
    endif
  endif
  if !empty(l:root)
    let l:command .= ' ' . l:root
  endif
  exec l:command
endfunction

nmap <Leader>e  :call <SID>ShowDir('', '%')<CR>

for k in ['w', 't', 'b', 'l', 'r']
  exec 'nmap <Leader>e' . k . ' :call <SID>ShowDir("'. k . '", "%")<CR>'
  exec 'nmap <Leader>e' . substitute(k, '\(\w\)', '\u\1', '') . ' :call <SID>ShowDir("'. k . '")<CR>'
endfor
" }}}

" Buffer
nmap <Leader>bn :bn<CR>
nmap <Leader>bN :bN<CR>

nmap g* :Ags \b<C-R>=expand('<cword>')<CR>\b<CR>

nmap <Leader>sy :syntax sync fromstart<CR>

nmap <Leader>te :te<CR>
nmap <Leader>ts :sp term://$SHELL<CR>
nmap <Leader>tv :vs term://$SHELL<CR>

" vim: sw=2 sts=2 fdm=marker
