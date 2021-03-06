" ingo/query/confirm.vim: Functions for building choices for confirm().
"
" DEPENDENCIES:
"
" Copyright: (C) 2013 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.014.001	15-Oct-2013	file creation
let s:save_cpo = &cpo
set cpo&vim

let s:acceleratorPattern = '[[:alnum:]]'
function! ingo#query#confirm#AutoAccelerators( choices, ... )
"******************************************************************************
"* PURPOSE:
"   Automatically add unique accelerators (&Accelerator) for the passed
"   a:choices, to be used in confirm(). Considers already existing ones.
"   Tries to assign to the first (possible) letter with priority.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Modifies a:choices.
"* INPUTS:
"   a:choices   List of choices where the accelerators should be inserted.
"   a:defaultChoice Number (i.e. index + 1) of the default in a:choices. It is
"		    assumed that that item does not need an accelerator.
"* RETURN VALUES:
"   Modified a:choices.
"******************************************************************************
    let l:defaultChoice = (a:0 ? a:1 : 0)
    let l:usedAccelerators = filter(
    \   map(
    \       copy(a:choices),
    \       'tolower(matchstr(v:val, "\\C&\\zs" . s:acceleratorPattern))',
    \   ),
    \   '! empty(v:val)'
    \)

    call   map(a:choices, 'v:key + 1 == l:defaultChoice ? v:val : s:AddAccelerator(l:usedAccelerators, v:val, 1)')
    return map(a:choices, 'v:key + 1 == l:defaultChoice ? v:val : s:AddAccelerator(l:usedAccelerators, v:val, 0)')
endfunction
function! s:AddAccelerator( usedAccelerators, value, isWantFirstCharacter )
    if a:value =~# '&' . s:acceleratorPattern
	return a:value
    endif

    if a:isWantFirstCharacter
	let l:candidates = [tolower(matchstr(a:value, s:acceleratorPattern))]
    else
	let l:candidates = split(
	\   tolower(substitute(a:value, '\%(' . s:acceleratorPattern . '\)\@!.', '', 'g')),
	\   '\zs'
	\)
    endif

    for l:candidate in l:candidates
	if index(a:usedAccelerators, l:candidate) == -1
	    call add(a:usedAccelerators, l:candidate)
	    return substitute(a:value, '\V\c' . escape(l:candidate, '\'), '\&&', '')
	endif
    endfor
    return a:value
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
