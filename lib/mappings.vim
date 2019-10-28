" Files
nmap <Leader>f :FZF<CR>

" Split window command {{{
function s:SplitCommand(...)
  let direction = get(a:, 1, '')
  let and_then = get(a:, 2, '')
  if direction == 'k'
    let command = 'split'
  elseif direction == 'j'
    let command = 'rightbelow split'
  elseif direction == 'h'
    let command = 'vsplit'
  elseif direction == 'l'
    let command = 'rightbelow vsplit'
  elseif direction == 't'
    let command = 'tabe'
  else
    let command = ''
  endif
  if and_then != ''
    let command .= ' | ' . and_then
  endif
  return command
endfunction
" }}}

" Split windows
for k in ['k', 'j', 'h', 'l', 't']
  exec 'nmap <silent> <Leader>w' . k . ' :' . s:SplitCommand(k) . '<CR>'
endfor

" Dirvish mappings {{{
function s:ShowDir(...)
  let direction = get(a:, 1, '')
  let root = get(a:, 2, '')
  let command = s:SplitCommand(direction, 'Dirvish')
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

nmap <silent> <Leader>e :call <SID>ShowDir('', '%')<CR>

for k in ['w', 'k', 'j', 'h', 'l', 't']
  exec 'nmap <silent> <Leader>e' . k . ' :call <SID>ShowDir("'. k . '", "%")<CR>'
  exec 'nmap <silent> <Leader>e' . substitute(k, '\(\w\)', '\u\1', '') . ' :call <SID>ShowDir("'. k . '")<CR>'
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

" vim:sw=2:sts=2:fdm=marker:
