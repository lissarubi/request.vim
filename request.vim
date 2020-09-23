let s:path = expand('<sfile>:p:h')

function! Request()
  execute "!ruby " . s:path . "/Request.rb " . @%
endfunction

command! -bar Request call Request()
