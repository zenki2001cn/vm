" ============================================================================
" File:        NERD_Tree_VE.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-08-23 14:51:18
" License:     
" ChangeLog:
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_ve")
    finish
endif

let g:loaded_nerdtree_ve = 1

" add the new key via NERD_Tree's API
call NERDTreeAddKeyMap({
	   \ 'key': 'E',
	   \ 'callback': 'NERDTreeOpenVE',
	   \ 'quickhelpText': 'Explorer dir with VE' })

function! NERDTreeOpenVE()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    let dir = curNode.path.str()

    exec "VE " . dir
endfunction
