" run all specs for current spec program:
   map ,s :w!<cr>:!rspec %:p<cr>

" rspec abreviations:
   ab shared_examples shared_examples_for "behavior here" do<cr>end
   ab shared_behavior describe "description here" do<cr>  before :each do<cr>end<cr>it_should_behave_like "behavior here"<cr><bs>end<cr>
   ab describe_do describe "description here" do<cr>end
   ab context_do describe "description here" do<cr>end
   ab it_do it "description here" do<cr>end
   ab before_each before :each do<cr>end<cr>

" rspec: run spec containing current line:
"function
   function run_single_rspec_test:(the_test)
     let g:rake_spec="!rspec ".a:the_test.":".line(".")
     exe g:rake_spec
   endfunction

"abbreviations
   map ,s :call run_single_rspec_test:(expand("%:p"))<cr>

" rspec-rails: run spec containing current line:
"function
   function run_single_rails_rspec_test:(the_test)
     let g:rake_spec="!rake spec SPEC=\"".a:the_test.":".line(".")."\""
     exe g:rake_spec
   endfunction
"abbreviations
   map ,r :call run_single_rails_rspec_test:(expand("%:p"))<cr>

" rspec-rails: run spec containing current line with debugging:
"function
   function run_spec_containing_current_line_with_debugging:(the_test)
     let g:rake_spec="!rake spec SPEC=\"".a:the_test.":".line(".")." -d\""
     exe g:rake_spec
   endfunction

"abbreviations
   map ,p :call run_spec_containing_current_line_with_debugging:(expand("%:p")) <cr>

function rspec:(the_test)
  let g:cmd="!rspec ".a:the_test.":".line(".")
  exe g:cmd
endfunction
map ,rspec :call ruby:(expand("%:p"))<cr>

