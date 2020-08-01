""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Navigator
" Description: Additional motions
" Author: Tyler Wayne (tylerwayne3@gmail.com)
" Last Modified: 2020-04-14
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" FUNCTIONS {{{

function! NextSection(type, comment_char)
  " Jump to line below level 1 section header
   
  let cc = a:comment_char
  let next_section = "/\\v" . cc . "{70}\\n" . cc . "{2}.*\\n" . cc . "{70}/e\<cr>j"

  if a:type ==? 'v'
    echom "search"
    execute "silent! normal! '<V'>" . next_section
  elseif a:type ==# 'char'
    execute "silent! normal! " . next_section
  endif

endfunction

" }}}
