" ============================================================================
" File: NERD_tree_filepirate.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 0.1
" Last Modified: 2013-01-04 12:45:03
" ============================================================================

if exists('g:did_NERD_tree_filepirate') || &cp || version < 700
    finish
endif
let g:did_NERD_tree_filepirate = 1

call NERDTreeAddMenuItem({
    \ 'text': '(f)ile search',
    \ 'shortcut': 'f',
    \ 'callback': 'NERDTreeFilePirate'})

function! NERDTreeFilePirate()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    else
        redraw
        echomsg "NERDTree: " . "Cache files, Please wait..."
    endif

    exec "python filepirate_open()"
endfunction
