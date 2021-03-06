" twl.vim: Toggle Window Layout
"  Author: Charles E. Campbell, Jr.
"  Date:   Nov 02, 2012
"  Version: 1b	ASTRO-ONLY
" ---------------------------------------------------------------------

"  Load Once: {{{1
if &cp || exists("g:loaded_twl")
 finish
endif
let s:keepcpo   = &cpo
let g:loaded_twl= "v1b"
set cpo&vim

" ---------------------------------------------------------------------
"  Public Interface: {{{1
com! -nargs=0 TWL :call s:ToggleWinLayout()

" ---------------------------------------------------------------------
" ToggleWinLayout: toggles between all-horizontal and all-vertical {{{1
"                  window layouts.  BTW, to make all buffers into
"                  separate windows, use :sba.  Based on the vimtip
"                  http://vim.sourceforge.net/tips/tip.php?tip_id=862
"                    W
"    W | W | W  <=>  W
"                    W
fun! s:ToggleWinLayout()
"  call Dfunc("ToggleWinLayout()")
  let curwin= winnr()
  if curwin == 1
   " try to go down one window
   wincmd j
   let isvert= winnr() != curwin
   wincmd k
  else      
   " try to go up one window
   wincmd k
   let isvert= winnr() != curwin
   wincmd j
  endif
  if isvert
   noautocmd windo wincmd H
  else
   noautocmd windo wincmd K
  endif
"  call Dret("ToggleWinLayout : (isvert=".isvert.")")
endfun

" ---------------------------------------------------------------------
"  Restore cpo: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo

" ---------------------------------------------------------------------
"  vim: fdm=marker
