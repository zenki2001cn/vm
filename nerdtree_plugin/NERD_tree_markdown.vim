" ============================================================================
" File:        NERD_Tree_markdown.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-08-27 14:59:23
" License:     
" ChangeLog:
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_markdown")
    finish
endif

let g:loaded_nerdtree_markdown = 1
let g:path_to_markdown_app = $HOME.'/.vim/toolsuit/Markdown.pl'
let g:mark_count = 0

" add the new menu item via NERD_Tree's API
" let globalMenu = NERDTreeAddSubmenu({
    " \ 'text': '(g)gtags and global tools',
"     \ 'shortcut': 'g' })

call NERDTreeAddMenuItem({
    \ 'text': '(m)arkdown generate',
    \ 'shortcut': 'm',
    \ 'callback': 'NERDTreeMarkdown'})

function! NERDTreeMarkdownFile(path)
    if matchstr(a:path,".markdown$") != '' || matchstr(a:path,".md$") != ''
        if !isdirectory(a:path)
            let rindex = strridx(a:path, ".")
            let name = strpart(a:path, 0, rindex)

            let cmd = g:path_to_markdown_app . " " . a:path . " > " . name . ".html"
            call system(cmd)
            let g:mark_count = g:mark_count + 1
        endif
    endif
endfunction

function! NERDTreeMarkdown()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    else
        redraw
        echomsg "NERDTree: " . "Markdown files, Please wait..."
    endif

    let path = curNode.path.str()
    if isdirectory(path)
        for i in split(globpath(path,"*"),"\n")
            call NERDTreeMarkdownFile(i) 
        endfor
    else
        call NERDTreeMarkdownFile(path)
    endif

    redraw
    echomsg "NERDTree: " . "Markdown " . g:mark_count . " files finished"
    let g:mark_count = 0
endfunction
