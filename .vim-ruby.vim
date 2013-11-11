" ruby abbreviations:
  ab if_do if end<esc>bi<cr><esc>xhxO
  ab if_else if end<esc>bi<cr><esc>xhxO else<esc>bhxA<cr> <esc>k$O
  ab meth def method<cr>end<esc>k<esc>:s/method/
  ab klas class KlassName<cr>end<esc>k<esc>:s/KlassName/
  ab mod module ModName<cr>end<esc>k<esc>:s/ModName/

" run current program:
   map ,rby :w!<cr>:!ruby %:p<cr>

" check syntax of current program:
   map ,c :w!<cr>:!ruby -c %:p<cr>

" crack it open irb:
   map ,i :w!<cr>:!irb<cr>

function ruby:(the_file)
  let g:cmd="!ruby ".a:the_file
  exe g:cmd
endfunction
map ,ruby :call ruby:(expand("%:p"))<cr>
