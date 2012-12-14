"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F1~F12 setting - these key binds move to myconf/mappings.vim {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:hotkeys = ['<F1>', '<F2>', '<F3>', '<F4>', '<F5>', '<F6>', '<F7>', '<F8>', '<F9>', '<F10>', '<F11>', '<F12>' ]

" function ClearMaps(keys)
    " for key in a:keys
        " try
            " exec 'unmap ' . key
        " catch
        " endtry
    " endfor
" endfunction

" function MapHotKeyGeneral()
    " echomsg 'entery General mode'
    " call ClearMaps(g:hotkeys)

    " " 目录管理插件
    " nnoremap <F1> :NERDTreeToggle<CR>

    " " 文件与NERDTree关联
    " nnoremap <F2> :NERDTreeFind<CR>

    " " 开关TaskList
    " nnoremap <F3> :TlistToggle<CR>

    " " 开关Tagbar
    " nnoremap <unique> <silent> <F4> :TagbarToggle<CR>

    " " 标记跳转
    " nnoremap <unique> <silent> <F6> ]`
    " nnoremap <unique> <silent> <F5> [`

    " " 加载CCTree数据库
    " nnoremap <F7> :CCTreeLoadDB<CR>

    " " 开关UndoTree
    " nnoremap <F8> :UndotreeToggle <CR>

    " " CCTree maps {
    " let g:CCTreeKeyTraceForwardTree = '<C-F8>'
    " let g:CCTreeKeyTraceReverseTree = '<C-F7>'
    " let g:CCTreeKeyHilightTree = '<F7>l'        " Static highlighting
    " let g:CCTreeKeySaveWindow = '<F7>y'
    " let g:CCTreeKeyToggleWindow = '<F7>w'
    " let g:CCTreeKeyDepthPlus = '<F7>='
    " let g:CCTreeKeyDepthMinus = '<F7>-'
    " " CCTree maps }

    " " quickfix maps {
    " nmap <C-F5> :cprevious <CR>
    " nmap <C-F6> :cnext <CR>
    " " quickfix maps }
" endfunction

" function MapHotKeyLatex()
    " echomsg 'entery Latex-Suite mode. Need reopen the tex files!'
    " let hotkeys = ['<F9>', '<F10>', '<F11>', '<F12>']
    " call ClearMaps(hotkeys)

    " " latex-suite maps {
    " au FileType tex imap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    " au FileType tex nmap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    " au FileType tex vmap <silent><buffer>   <F9>    <Plug>Tex_FastEnvironmentInsert
    " au FileType tex imap <silent><buffer>   <S-F9>  <Plug>Tex_FastEnvironmentChange
    " au FileType tex nmap <silent><buffer>   <S-F9>  <Plug>Tex_FastEnvironmentChange

    " au FileType tex imap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    " au FileType tex nmap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    " au FileType tex vmap <silent> <buffer> <F10> <Plug>Tex_FastCommandInsert
    " au FileType tex imap <silent> <buffer> <S-F10> <Plug>Tex_FastCommandChange
    " au FileType tex nmap <silent> <buffer> <S-F10> <Plug>Tex_FastCommandChange

    " if has('gui_running')
        " au FileType tex imap <buffer> <silent> <F11> <Plug>Tex_Completion
    " else
        " au FileType tex	imap <buffer> <F11> <Plug>Tex_Completion
    " endif

    " au FileType tex nmap <buffer>   <F12>   <ESC>:w<CR>\ll<ESC>\lv   
    " au FIleType tex vmap <buffer>   <F12>   <ESC>:w<CR>\ll<ESC>\lv
    " " latex-suite maps }
" endfunction

" " autocmd VimEnter * :call MapHotKeyGeneral()
" nnoremap <leader>1 :call MapHotKeyGeneral()<CR>
" nnoremap <leader>3 :call MapHotKeyLatex()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F1~F12 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 当前打开文件列表
nmap <leader><leader> \be

" TAB,标签页的映射
nmap te :tabedit <CR> 
nmap tc :tabclose <CR>
nmap tn :tabnext <CR>
nmap tp :tabprevious <CR>
nmap tf :tabfirst <CR>
nmap tl :tablast <CR>
" 标签页自动编号
set guitablabel=%{tabpagenr()}.%t\ %m

" 字符跳转到行首和行尾
map <S-e> <S-$>
map <S-b> 00

" 以十六进制显示
nmap <leader>xx :%!xxd -g 1<CR>
" 以二进制显示
nmap <leader>xb :%!xxd -b<CR>
" 以C语言十六进制数组定义的形式显示
nmap <leader>xc :%!xxd -i<CR>
" 恢复显示
nmap <leader>xr :%!xxd -r <CR>

" 列出session名称
nmap <leader>sl :SessionList <CR>
nmap <leader>sv :SessionSave <CR>
" map <leader>sc :SessionClose <CR>

" 快速保存
nmap <leader>wa :wa! <CR>
nmap ww :w! <CR>
" 快速退出
nmap <leader>qa :qa! <CR>
nmap <leader>qq :q! <CR>

" 快速翻滚
nmap gj 30j
nmap gk 30k
" V模式连续缩进
vnoremap < <gv
vnoremap > >gv

" 窗口管理
nnoremap wJ <c-w><S-j>  " 与下边窗口交换位置
nnoremap wK <c-w><S-k>  " 与上边窗口交换位置
nnoremap wH <c-w><S-h>  " 与左边窗口交换位置
nnoremap wL <c-w><S-l>  " 与右边窗口交换位置
nnoremap wj <c-w>j      " 切换到下边窗口
nnoremap wk <c-w>k      " 切换到上边窗口
nnoremap wh <c-w>h      " 切换到左边窗口
nnoremap wl <c-w>l      " 切换到右边窗口
nnoremap wc <C-w><C-q>  " 关闭当前窗口
nnoremap wv <C-w><C-v>  " 垂直分割窗口
nnoremap ws <C-w><C-s>  " 水平分割窗口

nnoremap qq <C-w><C-q>          " 关闭当前窗口
nnoremap qj <c-w>j<C-w><C-q>    " 关闭下边窗口
nnoremap qk <c-w>k<C-w><C-q>    " 关闭上边窗口
nnoremap qh <c-w>h<C-w><C-q>    " 关闭左边窗口
nnoremap ql <c-w>l<C-w><C-q>    " 关闭右边窗口
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
