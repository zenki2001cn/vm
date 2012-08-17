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
    let dir = g:NERDTreeDirNode.GetSelected().path.str()
    let ctags_cmd = 'ctags' . " -R " . dir

    wincmd w

    "echo ctags_cmd
    "exec 'silent!' . ctags_cmd
    exec '!' . ctags_cmd
endfunction

function! NERDTreeGtagsRun()
    " get the current dir from NERDTree
    let dir = g:NERDTreeDirNode.GetSelected().path.str()
    let global_wrap = $HOME.'/.vim/toolsuit/global_wrap.py'
    let gtags_cmd = global_wrap . " -C " . " -d " . dir

    wincmd w

    "echo gtags_cmd
    "exec 'silent!' . gtags_cmd
    exec '!' . gtags_cmd
endfunction

function! NERDTreeGlobalUpdate()
    " get the current dir from NERDTree
    let dir = g:NERDTreeDirNode.GetSelected().path.str()
    let global_wrap = $HOME.'/.vim/toolsuit/global_wrap.py'
    let global_cmd = global_wrap . " -e " . g:path_to_global_app . " -d " . dir

    wincmd w

    "echo global_cmd
    "exec 'silent!' . global_cmd
    exec '!' . global_cmd
endfunction
