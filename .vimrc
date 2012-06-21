" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"    \| exe "normal g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
"if has("autocmd")
"  filetype indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

" Source a global configuration file if available
" XXX Deprecated, please move your changes here in /etc/vim/vimrc
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Configures for Taglist plugin
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_Display_Prototype = 1
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 1
let Tlist_Show_Menu = 1
let Tlist_Use_SingleClick = 1
set updatetime=2000
nnoremap <F12> :TlistToggle<CR>

" Configures for NERDTree plugin
nnoremap <F11> :NERDTreeToggle<CR>

" Configures for ShowMarks plugin
let showmarks_include =  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" Configures for MiniBuffer plugin
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplModSelTarget = 1
"nnoremap <F4> :MiniBufExplorer<CR>

" Let vim work together with stardict
"nnoremap <F5> "*yiw

" Configure for Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-

" Some hot-keyes in insert mode
inoremap <C-H> <Left>
inoremap <C-L> <Right>
inoremap <C-K> <Up>
inoremap <C-J> <Down>
" This hot-key is provided to substitute Del, as it is too far
inoremap <C-D> <Delete>
inoremap <C-A> <Home>
inoremap <C-E> <End>

set nocompatible
set nu
filetype on 
set history=1000 
set background=dark 
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set hlsearch
set incsearch

let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
syntax on
colorscheme delek

au VimLeave * mksession! ~/.vim/session/myvim.session
au VimLeave * wviminfo! ~/.vim/session/myvim.viminfo
