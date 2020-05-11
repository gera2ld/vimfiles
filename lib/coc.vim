" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <Leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)

" Fix current line
nmap <leader>df  <Plug>(coc-fix-current)

command! -nargs=0   SessionSave   :call CocAction('runCommand', 'session.save', fnamemodify(getcwd(), ':t'))
command! -nargs=0   SessionLoad   :call CocAction('runCommand', 'session.load', fnamemodify(getcwd(), ':t'))
command! -nargs=0   Format        :call CocAction('format')
command! -nargs=?   Fold          :call CocAction('fold', <f-args>)
command! -nargs=0   OR            :call CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
nnoremap <silent> <space>l  :<C-u>CocList<CR>
" Show all diagnostics
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<CR>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<CR>
" Show git commits
nnoremap <silent> <space>c  :<C-u>CocList commits<CR>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<CR>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<CR>
" Search buffer list
nnoremap <silent> <space>b  :<C-u>CocList buffers<CR>
" Yank list
nnoremap <silent> <space>y  :<C-u>CocList yank<CR>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Search files in current working directory [coc-list:files]
nnoremap <silent> <space>f  :<C-u>CocList files<CR>

" Show commit that changed current line
nmap <silent> <space>gc <Plug>(coc-git-commit)

" multiple cursors session
nmap <silent> <C-x> <Plug>(coc-cursors-word)
nmap <expr> <silent> <C-c> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

" coc-pairs
autocmd FileType vim let b:coc_pairs_disabled = ['"']

" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
