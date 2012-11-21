"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"界面配置 {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("gui_running"))
    "GUI配置
    "set guioptions+=b "添加水平滚动条
    "去除工具栏
    " set guioptions-=T
    "去除菜单栏
    " set guioptions-=m
    "去除右边滚动条
    set guioptions-=r
    set guioptions-=L
    "字体配置
    set guifont=monospace\ 10

    " 解决gvim下无法显示中文的问题
    " 在/usr/share/vim/vim72/lang/下创建链接：
    " menu_zh_cn.utf8.vim -> menu_zh_cn.utf-8.vim

    "colorscheme ekinivim
    " colorscheme CodeFactoryv3
    "colorscheme fu
    " colorscheme leo
    "colorscheme silent
    "colorscheme ex_lightgray
    "colorscheme mrkn256
    " colorscheme ego
    "colorscheme tangoshady
    " colorscheme moria
    " let moria_monochrome = 1
    " let moria_fontface = 'mixed'
    "colorscheme earendel

    " let g:molokai_original=1
    colorscheme molokai
    " colorscheme candycode

    " syntax enable
    " set background=dark
    " let g:solarized_contrast="normal"
    " let g:solarized_visibility="normal"
    " colorscheme solarized
else
    set t_Co=256
    "colorscheme tangoshady
    " colorscheme moria
    " let moria_monochrome = 1
    " let moria_fontface = 'mixed'
    " colorscheme candycode
    "colorscheme fu
    "colorscheme leo
    "colorscheme deveiate
    " colorscheme CodeFactoryv3
    "colorscheme colorzone
    "colorscheme mrkn256
    " colorscheme oh_la_la
    "colorscheme candyman
    "colorscheme vibrantink 
    "colorscheme tabula
    "colorscheme maroloccio
    "colorscheme zenburn

    " colorscheme leo
    " let g:molokai_original=1
    colorscheme molokai
    " colorscheme badwolf
    " colorscheme candycode_term
    
    " colorscheme lucius
    " LuciusBlack

    " syntax enable
    " set background=dark
    " let g:solarized_termcolors=256
    " let g:solarized_contrast="normal"
    " let g:solarized_visibility="normal"
    " colorscheme solarized
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"颜色配置 }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

