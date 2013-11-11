" javascript
"jasmine.js
  "abbreviations
   ab describe_js describe('description here', function(){<cr>});
   ab context_js context('context here', function(){<cr>});
   ab it_js it('expectation here', function(){<cr>});
   ab expect_js expect().toEqual();
   ab before_js beforeEach(function(){<cr>});
   ab after_js afterEach(function(){<cr>});

"function abbreviations
   ab fun1 function(){}<esc>i<cr><esc>ko
   ab fun2 x=function(){};<esc>hi<cr>
   ab fun3 var x=function(){<cr>};
   imap js_class <esc>:r ~/.js-class.js<cr>
   imap js_extend <esc>:r ~/.js-extend.js<cr>
