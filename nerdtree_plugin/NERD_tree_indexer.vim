" ============================================================================
" File:        NERD_Tree_indexer.vim
" Description: 
" Maintainer:  Zenki.J.Zha
" Last Change: 2012-09-03 14:21:02
" License:     
" ChangeLog:
" ============================================================================

" don't load multiple times
if exists("g:loaded_nerdtree_indexer")
    finish
endif

let g:loaded_nerdtree_indexer = 1

" add the new key via NERD_Tree's API
let indexerMenu = NERDTreeAddSubmenu({
    \ 'text': '(i)ndexer and generate tags',
    \ 'shortcut': 'i' })

call NERDTreeAddMenuItem({
    \ 'text': '(a)dd this dir to indexer',
    \ 'shortcut': 'a',
    \ 'callback': 'NERDTreeIndexer',
    \ 'parent' : indexerMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(l)ist projects',
    \ 'shortcut': 'l',
    \ 'callback': 'NERDTreeIndexerList',
    \ 'parent' : indexerMenu})

call NERDTreeAddMenuItem({
    \ 'text': '(c)lean projects',
    \ 'shortcut': 'c',
    \ 'callback': 'NERDTreeIndexerClean',
    \ 'parent' : indexerMenu})

function! ShowProjectList(proj_list)
    redraw
    echohl Special | echomsg 'Indexer file list:' | echohl None
    echomsg ' '

    let indexer_wrap = $HOME.'/.vim/toolsuit/indexer.py'
    let id = 1
    for proj in a:proj_list
        let indexer_cmd = indexer_wrap . " -Q " . " -f " . g:indexer_indexerListFilename . ' -n ' . proj
        let dirs = system(indexer_cmd)
        echomsg id . '. ' . proj . ' : ' . dirs[:-2]
        let id = id + 1
    endfor

    echomsg ' '
endfunction

function! NERDTreeIndexer()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    " list indexer projects
    let indexer_wrap = $HOME.'/.vim/toolsuit/indexer.py'

    let indexer_cmd = indexer_wrap . " -l " . " -f " . g:indexer_indexerListFilename
    let output = system(indexer_cmd)
    let project_list = split(output[:-2], ';')
    call ShowProjectList(project_list)
    
    let dir = curNode.path.str()

    let default_project_name = split(split(dir,'/')[-1],'\.')[0]
    echohl Special
    let project_name = input("Project Name: ", default_project_name,"buffer")
    let project_dirs = input("Additional Directory: ", dir.'$',"file")
    echohl None

    if project_name == ''
        let project_name = default_project_name
    endif

    if project_dirs == ''
        let project_dirs = dir.'$'
    endif

    let indexer_cmd = indexer_wrap . " -f " . g:indexer_indexerListFilename . " -n " . project_name . " -d " . project_dirs
    let output = system(indexer_cmd)
    let project_list = split(output[:-2], ';')
    call ShowProjectList(project_list)
endfunction

function! NERDTreeIndexerList()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    " list indexer projects
    let indexer_wrap = $HOME.'/.vim/toolsuit/indexer.py'

    let indexer_cmd = indexer_wrap . " -l " . " -f " . g:indexer_indexerListFilename
    let output = system(indexer_cmd)
    let project_list = split(output[:-2], ';')
    call ShowProjectList(project_list)
endfunction

function! NERDTreeIndexerClean()
    " get the current dir from NERDTree
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode ==# {}
        redraw
        echomsg "NERDTree: " . "Put the cursor on a node first"
        return
    endif

    " list indexer projects
    let indexer_wrap = $HOME.'/.vim/toolsuit/indexer.py'

    let indexer_cmd = indexer_wrap . " -l " . " -f " . g:indexer_indexerListFilename
    let output = system(indexer_cmd)
    let project_list = split(output[:-2], ';')
    let result = SelectIndexer(project_list)

    if result == -1         " error selection
        echomsg "NERDTree: " . "Nothing Selected"
        return
    elseif result == -2     " clean
        let indexer_cmd = indexer_wrap . " -C " . " -n '*'" . " -f " . g:indexer_indexerListFilename
    else
        let indexer_cmd = indexer_wrap . " -C " . " -n " . project_list[result] . " -f " . g:indexer_indexerListFilename
    endif

    echomsg indexer_cmd
    let output = system(indexer_cmd)
    let project_list = split(output[:-2], ';')
    call ShowProjectList(project_list)
endfunction

function! SelectIndexer(list)
    redraw
    let selectList = deepcopy(a:list)
    if len(selectList) == 0
        return -1
    endif

    call insert(selectList,"*** Clean History ***",0)
    for i in range(0,len(selectList)-1)
        let selectList[i] = i . "  " . selectList[i]
    endfor

    let result = inputlist(selectList)
    if result > len(a:list) || result < 0
        return -1
    elseif result == 0
        return -2
    else
        return result-1
    endif
endfunction
