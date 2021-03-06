" Split window command {{{
function s:SplitCommand(...)
  let direction = get(a:, 1, '')
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
  return command
endfunction
" }}}

" Split windows
for k in split('kjhlt', '\zs')
  exec 'nmap <silent> <Leader>w' . k . ' :' . s:SplitCommand(k) . '<CR>'
endfor

" Dirvish mappings {{{
function s:ShowDir(...)
  let direction = get(a:, 1, '')
  let root = get(a:, 2, '')
  let command = s:SplitCommand(direction) . ' | Dirvish'
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

for k in split('wkjhlt', '\zs')
  exec 'nmap <silent> <Leader>e' . k . ' :call <SID>ShowDir("' . k . '", "%")<CR>'
  exec 'nmap <silent> <Leader>e' . substitute(k, '\(\w\)', '\u\1', '') . ' :call <SID>ShowDir("'. k . '")<CR>'
endfor
" }}}

" Terminal
for k in split('wkjhlt', '\zs')
  exec 'nmap <silent> <Leader>t' . k . ' :' . s:SplitCommand(k) . ' \| term<CR>'
endfor

" Files
nmap <Leader>ff :FZFFiles<CR>
" Search plain text
nmap <Leader>sf :CtrlSF<Space>

nmap g* :CtrlSF -W <c-r>=expand('<cword>')<cr><cr>

nmap <Leader>sy :syntax sync fromstart<CR>

nmap <silent> <Leader>tr <Plug>TranslateW
vmap <silent> <Leader>tr <Plug>TranslateWV

command! -range=% Markmap CocCommand markmap.create <line1> <line2>

" Floaterm {{{
nmap <silent> <leader>tfn :FloatermNew<CR>
nmap <silent> <leader>tfc :FloatermKill<CR>
nmap <silent> <leader>tf<space> :FloatermToggle<CR>
" }}}

" animate {{{
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>
" }}}

" hop {{{
nmap <silent> <leader>h :HopWord<CR>
" }}}

" vim:sw=2:sts=2:fdm=marker:
