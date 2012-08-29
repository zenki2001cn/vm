" ============================================================================
" File:        NERD_Tree_global.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-06-21
" License:     
" ChangeLog:
"   Date: 2012-08-17 15:39:09
"       1. 添加global子菜单
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
let globalMenu = NERDTreeAddSubmenu({
    \ 'text': '(g)gtags and global tools',
    \ 'shortcut': 'g' })

call NERDTreeAddMenuItem({
    \ 'text': '(u)update GTAGS',
    \ 'shortcut': 'u',
    \ 'callback': 'NERDTreeGlobalUpdate',
    \ 'parent': globalMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(g)tags run',
    \ 'shortcut': 'g',
    \ 'callback': 'NERDTreeGtagsRun',
    \ 'parent': globalMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(c)tags run',
    \ 'shortcut': 'c',
    \ 'callback': 'NERDTreeCtagsRun',
    \ 'parent': globalMenu})

function! NERDTreeCtagsRun()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let ctags_cmd = 'ctags' . " -R " . dir

    echomsg "ctags running..."

    "exec 'silent!' . ctags_cmd
    " exec '!' . ctags_cmd
    call system(ctags_cmd)

    redraw
    echomsg "ctags run finished"
endfunction

function! NERDTreeGtagsRun()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let global_wrap = $HOME.'/.vim/toolsuit/global_wrap.py'
    let gtags_cmd = global_wrap . " -C " . " -d " . dir

    echomsg "gtags running..."

    "exec 'silent!' . gtags_cmd
    " exec '!' . gtags_cmd
    call system(gtags_cmd)

    redraw
    echomsg "gtags run finished"
endfunction

function! NERDTreeGlobalUpdate()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let global_wrap = $HOME.'/.vim/toolsuit/global_wrap.py'
    let global_cmd = global_wrap . " -e " . g:path_to_global_app . " -d " . dir

    echomsg "gtags updating..."

    " exec '!' . global_cmd
    call system(global_cmd)

    redraw
    echomsg "gtags update finished"
endfunction
