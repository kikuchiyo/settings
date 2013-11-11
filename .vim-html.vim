" html
"abbreviations
  "ab htm <html><cr><tab><head><cr></head><cr><body><cr></body><cr><bs><bs></html>
   ab template_html <script type = 'text/template' id = 'templateIdHere'></script>
   ab script_i <script src=''></script>
   ab script_m <script><cr></script>
   ab Tpage <esc>:r ~/.vim/templates/pageContainer.html<cr>
   ab Ttable <esc>:r ~/.vim/templates/listTable.html<cr>

"function to render common html template

   function html:() 
     call feedkeys( "i", 't' )
     call feedkeys("<html>\<cr>  <head>\<cr></head>\<cr><body>\<cr> ", 't')
     call feedkeys( "\<esc>", 't' )
     call feedkeys( "i", 't' )
     call include_js:()
     call feedkeys("\<bs>\<bs></body>\<cr> \<esc>hxhxi</html>", 't')
   endfunction

