" ============================================================================
" File:        NERD_Tree_global.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-11-15 17:06:17
" License:     
" ChangeLog:
"   Date: 2012-11-15 17:05:02
"       1. 添加cscope子菜单
"       2. 添加移除tags、GPATH、cscope*等cache子菜单
"   Date: 2012-10-24 16:43:29
"       1. 添加utags子菜单
"       2. 更新若干菜单显示
"   Date: 2012-08-17 15:39:09
"       1. 添加global子菜单
"   Date: 2012-09-20 10:11:52
"       1. 添加ctags参数
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
    \ 'text': '(g)tags and global tools',
    \ 'shortcut': 'g' })

call NERDTreeAddMenuItem({
    \ 'text': '(u)pdate GTAGS',
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

call NERDTreeAddMenuItem({
    \ 'text': '(u)tags run',
    \ 'shortcut': 'u',
    \ 'callback': 'NERDTreeUtagsRun',
    \ 'parent': globalMenu})

call NERDTreeAddMenuItem({
    \ 'text': 'c(s)cope run',
    \ 'shortcut': 's',
    \ 'callback': 'NERDTreeCscopeRun',
    \ 'parent': globalMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(r)emove cache',
    \ 'shortcut': 'r',
    \ 'callback': 'NERDTreeRemoveCache',
    \ 'parent': globalMenu})

function! EntryDir(dir)
    exec 'chdir '. a:dir
endfunction

function! NERDTreeRemoveCache()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    let oldDir = getcwd()
    let dir = curNode.path.str()

    call EntryDir(dir)
    let remove_cmd = 'rm -f cscope.in.out cscope.out cscope.po.out GPATH GRTAGS GTAGS tags .utags'

    echomsg "Remove cache..."

    call system(remove_cmd)

    redraw
    echomsg "Remove finished"

    call EntryDir(oldDir)
    call curNode.refresh()
    call NERDTreeRender()
endfunction

function! NERDTreeCscopeRun()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    let oldDir = getcwd()
    let dir = curNode.path.str()

    call EntryDir(dir)
    let cscope_cmd = 'cscope -Rbkq'

    echomsg "cscope running..."

    call system(cscope_cmd)

    redraw
    echomsg "cscope run finished"

    call EntryDir(oldDir)
    call curNode.refresh()
    call NERDTreeRender()
endfunction

function! NERDTreeCtagsRun()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let ctags_cmd = 'ctags' . " -o " . dir . "/tags " . " -R --sort=yes --c-kinds=+p --c++-kinds=+p --fields=+iaKSz --fields=+lS --extra=+q --languages=c,c++,c#,java,python,vim,matlab,make,sh,ruby,perl,html,javascript,php,tex,lisp,lua, --langmap=c++:+.inl " . dir

    echomsg "ctags running..."

    "exec 'silent!' . ctags_cmd
    " exec '!' . ctags_cmd
    call system(ctags_cmd)

    redraw
    echomsg "ctags run finished"

    call curNode.refresh()
    call NERDTreeRender()
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

    call curNode.refresh()
    call NERDTreeRender()
endfunction

function! NERDTreeUtagsRun()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    let global_wrap = $HOME.'/.vim/toolsuit/utags'
    let utags_cmd = global_wrap . " -g " . dir . " > " . dir . "/.utags"

    echomsg "utags running..."

    call system(utags_cmd)

    redraw
    echomsg "utags run finished"

    call curNode.refresh()
    call NERDTreeRender()
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
