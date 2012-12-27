" ============================================================================
" File: NERD_tree_java.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 0.2 
" Last Modified: 2012-12-27 11:25:58
"   0.2:
"       添加NERDTreeJavaAddSourcePath，加入源码目录
" ============================================================================
if exists('g:did_NERD_tree_java') || &cp || version < 700
    finish
endif
let g:did_NERD_tree_java = 1

let globalMenu = NERDTreeAddSubmenu({
    \ 'text': '(t)ools',
    \ 'shortcut': 't' })

call NERDTreeAddMenuItem({
    \ 'text': 'add java (c)lass path',
    \ 'shortcut': 'c',
    \ 'callback': 'NERDTreeJavaAddClassPath',
    \ 'parent': globalMenu})

call NERDTreeAddMenuItem({
    \ 'text': 'add java (s)ource path',
    \ 'shortcut': 's',
    \ 'callback': 'NERDTreeJavaAddSourcePath',
    \ 'parent': globalMenu})

function! NERDTreeJavaAddClassPath()
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let file = curNode.path.str()

    call javacomplete#AddClassPath(file)
endfunction

function! NERDTreeJavaAddSourcePath()
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    call javacomplete#AddSourcePath(dir)
endfunction
