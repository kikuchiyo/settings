" open visually selected url in firefox:
" function
   function open_url_in_firefox:(copy_text)
     let g:open_url_in_firefox="silent !open -a \"firefox\" \"".a:copy_text."\""
     exe g:open_url_in_firefox
   endfunction

"abbreviations
   map ,d :call open_url_in_firefox:(expand("%:p"))<cr>
   map go y:call open_url_in_firefox:(@0)<cr> 
