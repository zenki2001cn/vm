" Hints.vim
"   Author: Charles E. Campbell, Jr.
"   Date:   Jan 12, 2012
"   Version: 1a	NOT RELEASED
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("g:loaded_Hints")
 finish
endif
let g:loaded_Hints= "v1a"
let s:keepcpo      = &cpo
set cpo&vim

" ---------------------------------------------------------------------
"  Highlighting Control: {{{1
" if the "HintHL" highlighting group hasn't been defined, then this function will define it
fun! s:HLTEST(hlname)
  let id_hlname= hlID(a:hlname)
  let fg_hlname= string(synIDattr(synIDtrans(hlID(a:hlname)),"fg"))
  if id_hlname == 0 || fg_hlname == "0" || fg_hlname == "-1"
   return 0
  endif
  return 1
endfun
if !s:HLTEST("HintHL")
 if &bg == "dark"
  hi HintHL ctermfg=blue ctermbg=white guifg=blue3 guibg=white
 else
  hi HintHL ctermfg=white ctermbg=blue guifg=white guibg=blue3
 endif
endif
delf s:HLTEST

" ---------------------------------------------------------------------
" Hints#ShowHint: {{{2
fun! Hints#ShowHint(trigger,msg)
"  call Dfunc("Hints#ShowHint(trigger<".a:trigger."> msg<".a:msg.">)")

  echoh HintHL
  echo  a:msg
  echoh None

"  call Dret("Hints#ShowHint")
  return a:trigger
endfun

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
