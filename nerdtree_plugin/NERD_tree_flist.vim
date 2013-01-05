" ============================================================================
" File:        NERD_Tree_flist.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-08-22 17:35:58
" License:     
" ChangeLog:
"   Date: 2012-08-17 15:39:55
"       1. 添加flist子菜单
"
"   Date: 2012-08-22 16:59:07
"       1. 添加显示hints文件列表选项
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_flist")
    finish
endif

let g:loaded_nerdtree_flist = 1

if !exists("g:path_to_flist_app")
    let g:path_to_flist_app = "flist"
endif

let g:path_to_flist_app = g:path_to_flist_app
" the path of flist_wrap.py
let g:FLIST_WRAP = $HOME.'/.vim/toolsuit/flist_wrap.py'

" add the new menu item via NERD_Tree's API
let flistMenu = NERDTreeAddSubmenu({
    \ 'text': '(h)ints C function',
    \ 'shortcut': 'h' })

call NERDTreeAddMenuItem({
    \ 'text': '(f)list hints to ftplugin/c',
    \ 'shortcut': 'f',
    \ 'callback': 'NERDTreeFlist',
    \ 'parent' : flistMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(w)ipe hints',
    \ 'shortcut': 'w',
    \ 'callback': 'NERDTreeClearHints',
    \ 'parent' : flistMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(l)ist all hints',
    \ 'shortcut': 'l',
    \ 'callback': 'NERDTreeListHints',
    \ 'parent' : flistMenu})

function! NERDTreeClearHints()
    " get the current dir from NERDTree
    let flist_cmd = g:FLIST_WRAP . " -c"

    " exec '!' . flist_cmd
    call system(flist_cmd)

    redraw
    echomsg "flist clean up"
endfunction

function! NERDTreeFlist()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let flist_cmd = g:FLIST_WRAP . " -e " . g:path_to_flist_app . " -d " . dir

    echomsg "flist running..."

    "echo flist_cmd
    "exec 'silent!' . flist_cmd
    " exec '!' . flist_cmd
    call system(flist_cmd)

    redraw
    echomsg "flist run finished"
endfunction

function! NERDTreeListHints()
    " get the current dir from NERDTree
    let dir = $HOME."/.vim/ftplugin/c/"
    let fileList = split(globpath(dir,"*"))

    redraw
    echo "Hints list:"
    echo "-----------"
    for i in fileList
        echo i
    endfor
endfunction
