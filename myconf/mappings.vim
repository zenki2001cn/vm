""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mappingmanager: example mappings.vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mapping menu
"
let g:map_info  = []
let g:map_info += ["Mapping F1",            "Programmer             "]
let g:map_info += ["F1 - NERDTreeToggle",   "打开NERDTree           "]
let g:map_info += ["F2 - NERDTreeFind",     "关联NERDTree           "]
let g:map_info += ["F3 - TList",            "打开TagList            "]
let g:map_info += ["F4 - Tagbar",           "打开Tagbar             "]
let g:map_info += ["F5 - Mark Previous",    "跳转到上一个标记位置   "]
let g:map_info += ["F6 - Mark Next",        "跳转到下一个标记位置   "]
let g:map_info += ["F7 - CCTree",           "打开CCTree"]
let g:map_info += ["F8 - UndoTree",         "显示修改的历史记录     "]
let g:map_info += ["F9 - Latex-suite",      "Latex环境              "]
let g:map_info += ["F10 - Latex-suite",     "Latex命令              "]
let g:map_info += ["F11 - Latex-suite",     "Latex完成              "]
let g:map_info += ["F12 - Latex-suite",     "dvi预览                "]
let g:map_info += ["Mapping F2",            "Web Browser            "]
let g:map_info += ["F1 - NERDTreeToggle",   "打开NERDTree           "]
let g:map_info += ["F2 - NERDTreeFind",     "关联NERDTree           "]
let g:map_info += ["F3 - not set",          "                       "]
let g:map_info += ["F4 - W3m",              "打开W3m                "]
let g:map_info += ["F5 - Reload",           "刷新页面               "]
let g:map_info += ["F6 - not set",          "                       "]
let g:map_info += ["F7 - HistoryClear",     "清空历史               "]
let g:map_info += ["F8 - History",          "打开历史               "]
let g:map_info += ["F9 - ShowTitle",        "显示标题               "]
let g:map_info += ["F10 - ShowUrl",         "显示地址               "]
let g:map_info += ["F11 - not set",         "                       "]
let g:map_info += ["F12 - Browser",         "外部浏览器             "]
" .. and so on (modify/add to your likings)

let g:hotkeys = ['<F1>', '<F2>', '<F3>', '<F4>', '<F5>', '<F6>', '<F7>', '<F8>', '<F9>', '<F10>', '<F11>', '<F12>' ]

function! ClearMaps(keys)
    for key in a:keys
        try
            exec 'unmap ' . key
        catch
        endtry
    endfor
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING #1 (default)
"
call MMUpdate()
if g:map_index == 1
    call ClearMaps(g:hotkeys)
    " noremap  <silent> <F3>  :execute ":echo 'F3  not set in ".g:map_name_1."'"<CR>

    " 目录管理插件
    nnoremap <F1> :NERDTreeToggle<CR>

    " 文件与NERDTree关联
    nnoremap <F2> :NERDTreeFind<CR>

    " 开关TList
    nnoremap <F3> :TlistToggle<CR>

    " 开关Tagbar
    nnoremap <unique> <silent> <F4> :TagbarToggle<CR>

    " 标记跳转
    nnoremap <unique> <silent> <F6> ]`
    nnoremap <unique> <silent> <F5> [`

    " 加载CCTree数据库
    nnoremap <F7> :CCTreeLoadDB<CR>

    " 开关UndoTree
    nnoremap <F8> :UndotreeToggle <CR>

    " quickfix maps {
    nmap <C-F5> :cprevious <CR>
    nmap <C-F6> :cnext <CR>
    " quickfix maps }

    " latex-suite maps {
    au FileType tex imap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    au FileType tex nmap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    au FileType tex vmap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    au FileType tex imap <silent><buffer>   <S-F9>  <Plug>Tex_FastEnvironmentChange
    au FileType tex nmap <silent><buffer>   <S-F9>  <Plug>Tex_FastEnvironmentChange

    au FileType tex imap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    au FileType tex nmap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    au FileType tex vmap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    au FileType tex imap <silent> <buffer> <S-F10> <Plug>Tex_FastCommandChange
    au FileType tex nmap <silent> <buffer> <S-F10> <Plug>Tex_FastCommandChange

    if has('gui_running')
        au FileType tex imap <buffer> <silent> <F11> <Plug>Tex_Completion
    else
        au FileType tex	imap <buffer> <F11> <Plug>Tex_Completion
    endif

    au FileType tex nmap <buffer>   <F12>   <ESC>:w<CR>\ll<ESC>\lv   
    au FIleType tex vmap <buffer>   <F12>   <ESC>:w<CR>\ll<ESC>\lv
    " latex-suite maps }

endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPING #2
"
call MMUpdate()
if g:map_index == 2
    exec "autocmd! FileType tex"
    call ClearMaps(g:hotkeys)

    nnoremap <F1> :NERDTreeToggle<CR>
    nnoremap <F2> :NERDTreeFind<CR>
    nnoremap <F4> :W3m<Space>

    nnoremap <F5> :W3mReload<CR>
    nnoremap <F7> :W3mHistoryClear<CR>
    nnoremap <F8> :W3mHistory<CR>

    nnoremap <F9> :W3mShowTitle<CR>
    nnoremap <F10> :W3mAddressBar<CR>
    nnoremap <F12> :W3mShowExtenalBrowser<CR>
endif
" .. and so on (modify/add to your likings)
