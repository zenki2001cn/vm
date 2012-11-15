" ============================================================================
" File: NERD_tree_CommandT.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 
" Last Modified: 十一月 12, 2012
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
