" ============================================================================
" File:        NERD_Tree_flist.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-05-01
" License:     
" ChangeLog:
"   Date: 2012-08-17 15:39:55
"       1. 添加flist子菜单
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
let flistMenu = NERDTreeAddSubmenu({
    \ 'text': '(f)list C function hints',
    \ 'shortcut': 'f' })

call NERDTreeAddMenuItem({
    \ 'text': '(f)list hints to ftplugin/c',
    \ 'shortcut': 'f',
    \ 'callback': 'NERDTreeFlist',
    \ 'parent' : flistMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(w)ipe hints',
    \ 'shortcut': 'w',
    \ 'callback': 'NERDTreeClear',
    \ 'parent' : flistMenu})

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
