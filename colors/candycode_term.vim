" Vim color file -- candycode
" Maintainer:   Justin Constantino <goflyapig-at-gmail-com>
" Last Change:  2006 Aug 12

set background=dark
highlight clear
let g:colors_name="candycode"

let save_cpo = &cpo
set cpo&vim

" basic highlight groups (:help highlight-groups) {{{

" text {{{

highlight Normal guifg=#ffffff guibg=#050505 gui=NONE ctermfg=231 ctermbg=232 cterm=NONE
            \   ctermfg=white       ctermbg=black       cterm=NONE

highlight Folded guifg=#c2bfa5 guibg=#050505 gui=underline ctermfg=144 ctermbg=232 cterm=underline
            \   ctermfg=lightgray   ctermbg=black       cterm=underline

highlight LineNr guifg=#928c75 guibg=NONE gui=NONE ctermfg=101 cterm=NONE
            \   ctermfg=darkgray    ctermbg=NONE        cterm=NONE

highlight Directory guifg=#00bbdd guibg=NONE gui=NONE ctermfg=38 cterm=NONE
            \   ctermfg=cyan        ctermbg=NONE        cterm=NONE
highlight NonText guifg=#77ff22 guibg=NONE gui=bold ctermfg=82 cterm=bold
            \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
highlight SpecialKey guifg=#559933 guibg=NONE gui=NONE ctermfg=64 cterm=NONE
            \   ctermfg=green       ctermbg=NONE        cterm=NONE

highlight SpellBad guifg=NONE guibg=NONE gui=undercurl cterm=undercurl
            \   ctermfg=white       ctermbg=darkred     guisp=#ff0011
highlight SpellCap guifg=NONE guibg=NONE gui=undercurl cterm=undercurl
            \   ctermfg=white       ctermbg=darkblue    guisp=#0044ff
highlight SpellLocal guifg=NONE guibg=NONE gui=undercurl cterm=undercurl
            \   ctermfg=black       ctermbg=cyan        guisp=#00dd99   
highlight SpellRare guifg=NONE guibg=NONE gui=undercurl cterm=undercurl
            \   ctermfg=white       ctermbg=darkmagenta guisp=#ff22ee   

highlight DiffAdd guifg=#ffffff guibg=#126493 gui=NONE ctermfg=231 ctermbg=24 cterm=NONE
            \   ctermfg=white       ctermbg=darkblue    cterm=NONE
highlight DiffChange guifg=#000000 guibg=#976398 gui=NONE ctermfg=16 ctermbg=96 cterm=NONE
            \   ctermfg=black       ctermbg=darkmagenta cterm=NONE
highlight DiffDelete guifg=#000000 guibg=#be1923 gui=bold ctermfg=16 ctermbg=124 cterm=bold
            \   ctermfg=black       ctermbg=red         cterm=bold
highlight DiffText guifg=#ffffff guibg=#976398 gui=bold ctermfg=231 ctermbg=96 cterm=bold
            \   ctermfg=white       ctermbg=green       cterm=bold

" }}}
" borders / separators / menus {{{

highlight FoldColumn guifg=#c8bcb9 guibg=#786d65 gui=bold ctermfg=250 ctermbg=242 cterm=bold
            \   ctermfg=lightgray   ctermbg=darkgray    cterm=NONE
highlight SignColumn guifg=#c8bcb9 guibg=#786d65 gui=bold ctermfg=250 ctermbg=242 cterm=bold
            \   ctermfg=lightgray   ctermbg=darkgray    cterm=NONE

highlight Pmenu guifg=#000000 guibg=#a6a190 gui=NONE ctermfg=16 ctermbg=247 cterm=NONE
            \   ctermfg=white       ctermbg=darkgray    cterm=NONE
highlight PmenuSel guifg=#ffffff guibg=#133293 gui=NONE ctermfg=231 ctermbg=19 cterm=NONE
            \   ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight PmenuSbar guifg=NONE guibg=#555555 gui=NONE ctermbg=240 cterm=NONE
            \   ctermfg=black       ctermbg=black       cterm=NONE
highlight PmenuThumb guifg=NONE guibg=#cccccc gui=NONE ctermbg=252 cterm=NONE
            \   ctermfg=gray        ctermbg=gray        cterm=NONE

highlight StatusLine guifg=#000000 guibg=#c2bfa5 gui=bold ctermfg=16 ctermbg=144 cterm=bold
            \   ctermfg=black       ctermbg=white       cterm=bold
highlight StatusLineNC guifg=#444444 guibg=#c2bfa5 gui=NONE ctermfg=238 ctermbg=144 cterm=NONE
            \   ctermfg=darkgray    ctermbg=white       cterm=NONE
highlight WildMenu guifg=#ffffff guibg=#133293 gui=bold ctermfg=231 ctermbg=19 cterm=bold
            \   ctermfg=white       ctermbg=darkblue    cterm=bold
highlight VertSplit guifg=#c2bfa5 guibg=#c2bfa5 gui=NONE ctermfg=144 ctermbg=144 cterm=NONE
            \   ctermfg=white       ctermbg=white       cterm=NONE

highlight TabLine guifg=#000000 guibg=#c2bfa5 gui=NONE ctermfg=16 ctermbg=144 cterm=NONE
            \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabLineFill guifg=#000000 guibg=#c2bfa5 gui=NONE ctermfg=16 ctermbg=144 cterm=NONE
            \   ctermfg=black       ctermbg=white       cterm=NONE
highlight TabLineSel guifg=#ffffff guibg=#133293 gui=NONE ctermfg=231 ctermbg=19 cterm=NONE
            \   ctermfg=white       ctermbg=black       cterm=NONE

"hi Menu
"hi Scrollbar
"hi Tooltip

" }}}
" cursor / dynamic / other {{{

highlight Cursor guifg=#000000 guibg=#ffff99 gui=NONE ctermfg=16 ctermbg=228 cterm=NONE
            \   ctermfg=black       ctermbg=white       cterm=NONE
highlight CursorIM guifg=#000000 guibg=#aaccff gui=NONE ctermfg=16 ctermbg=153 cterm=NONE
            \   ctermfg=black       ctermbg=white       cterm=reverse
highlight CursorLine guifg=NONE guibg=#1b1b1b gui=NONE ctermbg=234 cterm=NONE
            \   ctermfg=NONE        ctermbg=NONE        cterm=NONE
highlight CursorColumn guifg=NONE guibg=#1b1b1b gui=NONE ctermbg=234 cterm=NONE
            \   ctermfg=NONE        ctermbg=NONE        cterm=NONE

highlight Visual guifg=#ffffff guibg=#606070 gui=NONE ctermfg=231 ctermbg=241 cterm=NONE
            \   ctermfg=white       ctermbg=lightblue   cterm=NONE

highlight IncSearch guifg=#000000 guibg=#eedd33 gui=bold ctermfg=16 ctermbg=184 cterm=bold
            \   ctermfg=white       ctermbg=yellow      cterm=NONE
highlight Search guifg=#efefd0 guibg=#937340 gui=NONE ctermfg=230 ctermbg=137 cterm=NONE
            \   ctermfg=white       ctermbg=darkgreen   cterm=NONE

highlight MatchParen guifg=NONE guibg=#3377aa gui=NONE ctermbg=32 cterm=NONE
            \   ctermfg=white       ctermbg=blue        cterm=NONE

"hi VisualNOS

" }}}
" listings / messages {{{

highlight ModeMsg guifg=#eecc18 guibg=NONE gui=NONE ctermfg=220 cterm=NONE
            \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
highlight Title guifg=#dd4452 guibg=NONE gui=bold ctermfg=167 cterm=bold
            \   ctermfg=red         ctermbg=NONE        cterm=bold
highlight Question guifg=#66d077 guibg=NONE gui=NONE ctermfg=78 cterm=NONE
            \   ctermfg=green       ctermbg=NONE        cterm=NONE
highlight MoreMsg guifg=#39d049 guibg=NONE gui=NONE ctermfg=77 cterm=NONE
            \   ctermfg=green       ctermbg=NONE        cterm=NONE

highlight ErrorMsg guifg=#ffffff guibg=#ff0000 gui=bold ctermfg=231 ctermbg=196 cterm=bold
            \   ctermfg=white       ctermbg=red         cterm=bold
highlight WarningMsg guifg=#ccae22 guibg=NONE gui=bold ctermfg=178 cterm=bold
            \   ctermfg=yellow      ctermbg=NONE        cterm=bold

" }}}

" }}}
" syntax highlighting groups (:help group-name) {{{

highlight Comment guifg=#ff9922 guibg=NONE gui=NONE ctermfg=208 cterm=NONE
            \   ctermfg=brown       ctermbg=NONE        cterm=NONE

highlight Constant guifg=#ff6050 guibg=NONE gui=NONE ctermfg=203 cterm=NONE
            \   ctermfg=red         ctermbg=NONE        cterm=NONE
highlight Boolean guifg=#ff6050 guibg=NONE gui=bold ctermfg=203 cterm=bold
            \   ctermfg=red         ctermbg=NONE        cterm=bold

highlight Identifier guifg=#eecc44 guibg=NONE gui=NONE ctermfg=221 cterm=NONE
            \   ctermfg=yellow      ctermbg=NONE        cterm=NONE

highlight Statement guifg=#66d077 guibg=NONE gui=bold ctermfg=78 cterm=bold
            \   ctermfg=green       ctermbg=NONE        cterm=bold

highlight PreProc guifg=#bb88dd guibg=NONE gui=NONE ctermfg=140 cterm=NONE
            \   ctermfg=darkmagenta ctermbg=NONE        cterm=NONE

highlight Type guifg=#4093cc guibg=NONE gui=bold ctermfg=32 cterm=bold
            \   ctermfg=lightblue   ctermbg=NONE        cterm=bold

highlight Special guifg=#9999aa guibg=NONE gui=bold ctermfg=247 cterm=bold
            \   ctermfg=lightgray   ctermbg=NONE        cterm=bold

highlight Underlined guifg=#80a0ff guibg=NONE gui=underline ctermfg=111 cterm=underline
            \   ctermfg=NONE        ctermbg=NONE        cterm=underline
            \   term=underline 

highlight Ignore guifg=#888888 guibg=NONE gui=NONE ctermfg=102 cterm=NONE
            \   ctermfg=darkgray    ctermbg=NONE        cterm=NONE

highlight Error guifg=#ffffff guibg=#ff0000 gui=NONE ctermfg=231 ctermbg=196 cterm=NONE
            \   ctermfg=white       ctermbg=red         cterm=NONE

highlight Todo guifg=#ffffff guibg=#ee7700 gui=bold ctermfg=231 ctermbg=208 cterm=bold
            \   ctermfg=black       ctermbg=yellow      cterm=bold

" }}}

let &cpo = save_cpo

" vim: fdm=marker fdl=0
