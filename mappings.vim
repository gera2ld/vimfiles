" Files
nmap <Leader>f :FZF<CR>

" Dirvish mappings {{{
function s:ShowDir(...)
  let direction = get(a:, 1, '')
  let root = get(a:, 2, '')
  if direction == 't'
    let command = 'split | '
  elseif direction == 'b'
    let command = 'rightbelow split | '
  elseif direction == 'l'
    let command = 'vsplit | '
  elseif direction == 'r'
    let command = 'rightbelow vsplit | '
  else
    let command = ''
  endif
  let command .= 'Dirvish'
  if !empty(root) && root !~ '/$'
    let root = expand(root . ':p:h')
    if !isdirectory(root)
      let root = ''
    endif
  endif
  if !empty(root)
    let command .= ' ' . root
  endif
  exec command
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
