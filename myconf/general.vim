"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"让vim记忆上次编辑的位置
autocmd BufReadPost * 
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \ exe "normal g'\"" |
    \ endif
""让vim记忆上次编辑的位置

set langmenu=none       " always use English menu
behave xterm            " set mouse behavior as xterm
set mouse=a
set viminfo+=!          " make sure it can save viminfo 
set shellredir=>%s\ 2>&1
set updatetime=10000    "  default = 4000, 改为10秒同步磁盘
set autoread            "  auto read same-file change ( better for vc/vim change )
set maxmempattern=1000

set nocompatible
syntax on
filetype on 
filetype plugin on
filetype indent on
set history=1000 
set autoindent 
set cindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab               " TAB键扩展
set showmatch
set t_vb=
"set vb
set ruler
set hlsearch                " 搜索时高亮显示匹配的文本
set incsearch               " 输入搜索内容时，显示匹配的文本
"set autochdir              " 自动切换到当前文件所在目录，开启后不能使用Java的tags文件
"set foldenable             " 开启折叠
"set foldmethod=syntax      " 设置语法折叠
"set foldcolumn=0           " 设置折叠区域的宽度
"set foldlevel=1            " 设置折叠层数
set linebreak
set bs=2
" set wildignore=*.o,*.pyc,*~ " vimExplorer may lost these files
set laststatus=2

set matchtime=0       "  0 second to show the matching paren ( much faster )
set nonu                "  Show LineNumber
set nowrap            "  I don't like wrap, cause in split window mode, it feel strange
set wildmenu          "  turn on wild menu, try typing :h and press <Tab>
set showcmd           "  display incomplete commands
set cmdheight=1       "  1 screen lines to use for the command-line
set hid               "  allow to change buffer without saving
set shortmess=atI     "  shortens messages to avoid 'press a key' prompt
set lazyredraw        "  do not redraw while executing macros (much faster)
set redraw optimize
set display+=lastline "  for easy browse last line with wrap text
set showfulltag       "  show tag with function protype.

" 状态栏
" set statusline=\ [File]\ %F%m%r%h\ %w\ \ [PWD]\ %r%{CurrectDir()}%h\ \ %=[Line]\ %l,%c\ %=\ %P
" set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ [位置=%l,%c%V] [\%p%%\ ] [总行数=%L]
" set statusline=%F\ %{&fileformat},%{&fileencoding},%Y\ [ASCII=%03.3b]\[HEX=%02.2B]\[行=%04l,列=%04v]\[%p%%]\[总行=%L]
" set statusline=%F\ \ \ %{&fileformat},%{&fileencoding},%Y\ \ \ A=%03.3b,H=%02.2B\ R=%03l/%L(%p%%),C=%02v

set hidden
"光标离上下边界10行时自动滚动
set scrolloff=10
"设置默认系统剪贴板
"set clipboard=unnamed

" 使得注释换行时自动加上空格和星号
set formatoptions=tcoqmMr
"高亮显示当前行
set cursorline
"显示中文帮助
"set helplang=cn
"当粘贴文本时,使用该属性
" set paste

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
set ignorecase  " Set search/replace pattern to ignore case 
set smartcase   " Set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.

let &termencoding=&encoding
set encoding=utf-8  
set termencoding=utf-8  
set fileencodings=utf-8,gbk,chinese,ucs-bom,prc,taiwan,latin-1,cp936
set fileformat=unix
set fileformats=unix,dos,mac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mylibs setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义库的路径
let g:my_python_home = $HOME.'/.vim/mylibs'

function RunMyPyfile(filename)
    exec "pyfile ".g:my_python_home."/python/".a:filename
endfunction

" 加载NERDTree文件操作功能的扩展库
call RunMyPyfile("FileUtil.py")
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mylibs setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

