source ~/.vim-ruby.vim
source ~/.vim-rails.vim
source ~/.vim-rspec.vim
source ~/.vim-js.vim
source ~/.vim-html.vim
source ~/.vim-tools.vim
source ~/.vim-general.vim

"function
   function pretty:()
     let g:current_line = line('.')
     if match(getline(g:current_line), "^[^\"\']*{.*}") != -1 
       call feedkeys("k0i\<esc>", 't')
       call feedkeys("0/{\<cr>", 't')
       call feedkeys("\<esc>v%c\<esc>i\<esc>o\<esc>p0x$xO{\<esc>jo}", 't')
     else
       echo 'No match Found in '.getline(line('.'))
     endif
   endfunction
