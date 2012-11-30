" ============================================================================
" File: NerdTree_extra.vim
" Author: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Version: 
" Last Modified: 2012-11-28 10:22:16
"   1. Porting from SzTools plugin.
"   2. Add <C-n> to create child node.
" ============================================================================
if exists("g:loaded_nerdtree_file_extend")
    finish
endif

let g:loaded_nerdtree_file_extend = 1

call NERDTreeAddKeyMap({
       \ 'key': 'yy',
       \ 'callback': 'NERDTreeYankNode',
       \ 'quickhelpText': 'yank current node to buffer' })

call NERDTreeAddKeyMap({
       \ 'key': 'ya',
       \ 'callback': 'NERDTreeYankPath',
       \ 'quickhelpText': 'yank current node path to default register' })

call NERDTreeAddKeyMap({
       \ 'key': 'dd',
       \ 'callback': 'NERDTreeCutNode',
       \ 'quickhelpText': 'cut current node to buffer' })

call NERDTreeAddKeyMap({
       \ 'key': 'p',
       \ 'callback': 'NERDTreePasteToNode',
       \ 'quickhelpText': 'paste buffer to current node' })

call NERDTreeAddKeyMap({
       \ 'key': 'DD',
       \ 'callback': 'NERDTreeRmNode',
       \ 'quickhelpText': 'remove current node recursively' })

call NERDTreeAddKeyMap({
       \ 'key': '<C-n>',
       \ 'callback': 'NERDTreeAddNodeM',
       \ 'quickhelpText': 'add childnode' })

let g:SzToolNodeBuf = ""
let g:SzToolOpType = ""
let g:SzToolParentOfRmNode = {}

function! NERDTreeYankNode()
  call NodeToBuf("yank")
endfunction

function! NERDTreeCutNode()
  call NodeToBuf("cut")
endfunction

function! NERDTreeAddNodeM()
    let curDirNode = g:NERDTreeDirNode.GetSelected()

    let newNodeName = input("Add a childnode\n".
                          \ "==========================================================\n".
                          \ "Enter the dir/file name to be created. Dirs end with a '/'\n" .
                          \ "", curDirNode.path.str() . g:NERDTreePath.Slash(), "file")

    if newNodeName ==# ''
        call s:echo("Node Creation Aborted.")
        return
    endif

    try
        let newPath = g:NERDTreePath.Create(newNodeName)
        let parentNode = b:NERDTreeRoot.findNode(newPath.getParent())

        let newTreeNode = g:NERDTreeFileNode.New(newPath)
        if parentNode.isOpen || !empty(parentNode.children)
            call parentNode.addChild(newTreeNode, 1)
            call NERDTreeRender()
            call newTreeNode.putCursorHere(1, 0)
        endif
    catch /^NERDTree/
        echomsg "Node Not Created."
    endtry
endfunction

function! NERDTreeYankPath()
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode != {}
        echomsg 'node: ' . curNode.path.str() . " path yanked to @0. "
        let @" = curNode.path.str()
    endif
endfunction

function! NERDTreeRmNode()
    let curNode = g:NERDTreeFileNode.GetSelected()
    let parent = curNode.parent
    let curPath = curNode.path.str()

    let result = confirm("File delete: ".curPath." ? ", "&Yes\n&No", 1)

    if result == 1
        python FileUtil.fileOrDirRm(vim.eval("curPath"))

        if curPath == g:SzToolNodeBuf
            echomsg 'node: delete yanked path ' . curPath
            let g:SzToolNodeBuf = ""
        endif
    endif
    
    call parent.refresh()
    call NERDTreeRender()
endfunction

function! NERDTreePasteToNode()
    let result = 1
    let curNode = g:NERDTreeDirNode.GetSelected()
    if curNode == {}
      redraw
      echomsg "NERDTree: " . "Put the cursor on a node first"
      return
    endif 

    let curPath = curNode.path.str()
    if g:SzToolNodeBuf != ""
      let targetFile = curPath.'/'.split(g:SzToolNodeBuf, '/')[-1]
      if findfile(targetFile) != '' || finddir(targetFile) != ''
        let result = confirm("File exists! Over write ? ", "&Yes\n&No", 1)
      endif

      if result == 1
        if g:SzToolOpType == "yank" 
          python FileUtil.fileOrDirCp(vim.eval("g:SzToolNodeBuf"),vim.eval("targetFile"))
        else
          python FileUtil.fileOrDirMv(vim.eval("g:SzToolNodeBuf"),vim.eval("targetFile"))
        endif
        echomsg 'node: ' . curNode.path.str() . " pasted. "
      endif

      let g:SzToolNodeBuf = ""
      call curNode.refresh()
      if g:SzToolParentOfRmNode != {}
        call g:SzToolParentOfRmNode.refresh()
      endif
      call NERDTreeRender()
    endif
endfunction

function! NodeToBuf(opType)
    let curNode = g:NERDTreeFileNode.GetSelected()
    if curNode != {}
        echomsg 'node: ' . curNode.path.str() . " yanked. "
        let g:SzToolNodeBuf = curNode.path.str()
        let g:SzToolOpType = a:opType
        let g:SzToolParentOfRmNode = curNode.parent
    endif
endfunction
