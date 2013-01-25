" RocketJump -- jump to a visible line using alphabetic signs instead of line numbers
" Author: Danilov Aleksey <thetruenightwalker@gmail.com>
" Version: 1.0

" Starting ID for signs
if !exists("g:rj_startid")
	let g:rj_startid = 888888
endif
" Sign chars
if !exists("g:rj_chars")
	let g:rj_chars = "abcdefghijklmnopqrstuvwxyz"
endif
" Adjust command char
if !exists("g:rj_cmdchar")
	let g:rj_cmdchar = " "
endif
" Sign highlighting scheme
if !exists("g:rj_signscheme")
	let g:rj_signscheme = (has("gui_running")? "guifg=#bcbcbc" : "ctermfg=250")      " modify zenki, change color
endif
exe "highlight rj_signcolor ".g:rj_signscheme  

" Initial definition of signs
function! RocketJump#DefineJumpSigns()
	let i = 1
	while i < strlen(g:rj_chars)
		exe "sign define rj_sign".i." text=".strpart(g:rj_chars, i - 1, 1)." texthl=rj_signcolor"
		let i += 1
	endwhile
endfunction

" Jumping with signs
function! RocketJump#PerformJump(visual) range
	let relnum = &relativenumber
	let number = &number
	set norelativenumber
	set nonumber
	" Placing signs
	let id = g:rj_startid
	let i = line("w0")
	let num = 1
	while i <= line("w$") && num <= strlen(g:rj_chars)
		exe "sign place ".id." line=".i." name=rj_sign".num." buffer=".bufnr("%")
		let i += 2
		let id += 2
		let num += 1
	endwhile
	" Getting user input
	echo "Jump to line "
	let char = nr2char(getchar())
	let lstart = 0
	" Adjusting signs on demand
	while char == g:rj_cmdchar
		" Placing new signs
		let lstart = !lstart
		let id = g:rj_startid + lstart
		let i = line("w0") + lstart
		let num = 1
		while i <= line("w$") && num <= strlen(g:rj_chars)
			exe "sign place ".id." line=".i." name=rj_sign".num." buffer=".bufnr("%") 
			let i += 2
			let id += 2
			let num += 1
		endwhile
		" Removing old signs
		let id = g:rj_startid + !lstart
		let i = line("w0") + !lstart
		while i <= line("w$")
			exe "sign unplace ".id." buffer=".bufnr("%") 
			let i += 2
			let id += 2
		endwhile
		let char = nr2char(getchar())
	endwhile
	" Jumping to sign
	let i = stridx(g:rj_chars, char)
	if a:visual
		normal! gv
	endif
	if i >= 0
		exe "sign jump ".(g:rj_startid + lstart + i*2)." buffer=".bufnr("%") 
	endif
	" Removing signs
	let id = g:rj_startid + lstart
	let i = line("w0") + lstart
	while i <= line("w$")
		exe "sign unplace ".id." buffer=".bufnr("%") 
		let i += 2
		let id += 2
	endwhile
	let &relativenumber = relnum
	let &number = number
endfunction

call RocketJump#DefineJumpSigns()
if !exists("g:rj_nomapping")
	noremap <silent> gl :call RocketJump#PerformJump(0) <CR>
	noremap <silent> gn V <bar> :call RocketJump#PerformJump(1) <CR>
	vnoremap <silent> gl :call RocketJump#PerformJump(1) <CR>
endif
