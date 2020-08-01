function! AddHeaderLevel1(comment_char)
  
  " Add comment characters to current line and capitalize
  execute ":s/\\v^(\\s*)(.*)/\\1" . repeat(a:comment_char, 3) . " \\2"
  normal! gUU

  " Add surrounding comment lines
  copy .-1
  execute ":s/\\v^(\\s*).*/\\1" . repeat(a:comment_char, 80)
  copy .+1

endfunction

function! AddHeaderLevel2(comment_char)

  " Add comment characters to current line and capitalize
  execute ":s/\\v^(\\s*)(.*)/\\1" . repeat(a:comment_char, 2) . " \\2"
  normal! gUU

  " Add comment line below
  copy .
  execute ":s/\\v^(\\s*).*/\\1" . repeat(a:comment_char, 40)

endfunction

