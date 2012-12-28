" ============================================================================
" File: NERD_tree_java.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 0.3 
" Last Modified: 2012-12-27 11:25:58
"   0.3:
"       1. 添加NERDTreeShowJavaRunEnv， 打印Java运行时环境变量
"   0.2:
"       1. 添加NERDTreeJavaAddSourcePath，加入源码目录
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

call NERDTreeAddMenuItem({
    \ 'text': 'show java runtime (e)nvironment',
    \ 'shortcut': 'e',
    \ 'callback': 'NERDTreeShowJavaRunEnv',
    \ 'parent': globalMenu})

function! NERDTreeJavaAddClassPath()
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    try
        redraw
        call java#AddDirOrJarToClassPath(dir)
        call java#AddDirOrJarToClassPath(dir . '/' . '*.jar')
    catch
        echohl Error | echomsg 'Open java file first.' | echohl none 
    endtry
    
endfunction

function! NERDTreeJavaAddSourcePath()
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif
    let dir = curNode.path.str()

    try
        redraw
        call java#AddDirToSourcePath(dir)
    catch
        echohl Error | echomsg 'No java file opened.' | echohl none 
    endtry
    
endfunction

function! NERDTreeShowJavaRunEnv()
    try
        redraw
        call JavaCompleteEnv() 
    catch
        echohl Error | echomsg 'No java file opened.' | echohl none 
    endtry
endfunction
