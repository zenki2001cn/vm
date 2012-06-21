" ============================================================================
" File:        NERD_Tree_flist.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-05-01
" License:     
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_flist")
    finish
endif

let g:loaded_nerdtree_flist = 1

if !exists("g:path_to_flist_app")
    let g:path_to_flist_app = "flist"
endif

"let g:path_to_flist_app = g:path_to_flist_app . "\\ -H\\ --nocolor\\ --nogroup"
let g:path_to_flist_app = g:path_to_flist_app

" add the new menu item via NERD_Tree's API
call NERDTreeAddMenuItem({
    \ 'text': '(f)list C function hints',
    \ 'shortcut': 'f',
    \ 'callback': 'NERDTreeFlist' })

call NERDTreeAddMenuItem({
    \ 'text': '(w)ipe hints',
    \ 'shortcut': 'w',
    \ 'callback': 'NERDTreeClear' })

function! NERDTreeClear()
    " get the current dir from NERDTree
    let flist_wrap = $HOME.'/.vim/toolsuit/flist_wrap.py'
    let flist_cmd = flist_wrap . " -c"

    wincmd w

    exec '!' . flist_cmd
endfunction

function! NERDTreeFlist()
    " get the current dir from NERDTree
    let dir = g:NERDTreeDirNode.GetSelected().path.str()
    let flist_wrap = $HOME.'/.vim/toolsuit/flist_wrap.py'
    let flist_cmd = flist_wrap . " -e " . g:path_to_flist_app . " -d " . dir

    wincmd w

    "echo flist_cmd
    "exec 'silent!' . flist_cmd
    exec '!' . flist_cmd
endfunction
