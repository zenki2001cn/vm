" ============================================================================
" File:        NERD_Tree_global.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-06-21
" License:     
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_global")
    finish
endif

let g:loaded_nerdtree_global = 1

if !exists("g:path_to_global_app")
    let g:path_to_global_app = "global"
endif

let g:path_to_global_app = g:path_to_global_app

" add the new menu item via NERD_Tree's API
call NERDTreeAddMenuItem({
    \ 'text': '(g)global update GTAGS',
    \ 'shortcut': 'g',
    \ 'callback': 'NERDTreeGlobal' })

function! NERDTreeGlobal()
    " get the current dir from NERDTree
    let dir = g:NERDTreeDirNode.GetSelected().path.str()
    let global_wrap = $HOME.'/.vim/toolsuit/global_wrap.py'
    let global_cmd = global_wrap . " -e " . g:path_to_global_app . " -d " . dir

    wincmd w

    "echo global_cmd
    "exec 'silent!' . global_cmd
    exec '!' . global_cmd
endfunction
