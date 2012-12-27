" ============================================================================
" File: NERD_tree_CommandT_and_CtrlP.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 0.2 
" Last Modified: 2012-12-26 11:02:27
"   0.2:
"    1. 添加CtrlP的快捷键   
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_commandt")
    finish
endif

let g:loaded_nerdtree_commandt = 1

" add the new key via NERD_Tree's API
call NERDTreeAddKeyMap({
	   \ 'key': 'T',
	   \ 'callback': 'NERDTreeOpenCommandT',
	   \ 'quickhelpText': 'Explorer dir with CommandT' })

call NERDTreeAddKeyMap({
	   \ 'key': '<C-p>',
	   \ 'callback': 'NERDTreeOpenCtrlP',
	   \ 'quickhelpText': 'Explorer dir with CtrlP' })

function! NERDTreeOpenCommandT()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    let dir = curNode.path.str()

    exec "CommandT " . dir
endfunction

function! NERDTreeOpenCtrlP()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    let dir = curNode.path.str()

    exec "CtrlP " . dir
endfunction
