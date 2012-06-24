runtime! debian.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitv setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 水平分割窗口
let g:Gitv_CommitStep = 10
let g:Gitv_OpenHorizontal = 1
nmap <Leader>gv :Gitv --no-merges
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gt :Gtabedit<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitv setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autoclose setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置需要自动补全的字符对
let g:AutoClosePairs = {'{': '}', '[': ']', '"': '"', "'": "'"}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autoclose setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffers_search_and_replace setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ,bs :Bs 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffers_search_and_replace setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoTag setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maxTagsFileSize = 1024*1024*10,
" ExcludeSuffixes = "tml.xml.text.txt.swp",
" VerbosityLevel = logging.WARNING,
" CtagsCmd = "ctags",
" TagsFile = "tags",
" Disabled = 0,
" StopAt = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutoTag setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dirdiff setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DirDiffTextDiffer = " 不同"
let g:DirDiffTextOnlyIn = "只在 "
let g:DirDiffTextFiles = "文件 "
let g:DirDiffTextAnd = " 和 "
let g:DirDiffTextOnlyInCenter = " 存在："
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,.svn,.git"

" 如果是diff模式，映射]c和[c
if (&diff)
    nnoremap ]] ]c
    nnoremap [[ [c
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dirdiff setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Synopsis "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Zenki J.Zha"
let g:DoxygenToolkit_licenseTag="Zenki J.Zha"

nnoremap ,cf :Dox<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_commenter setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_commenter setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeAck setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:path_to_search_app = $HOME.'/.vim/toolsuit/ack'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeAck setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeFlist setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:path_to_flist_app = $HOME.'/.vim/toolsuit/flist'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeFlist setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c-support setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 由于默认会查找系统配置文件，所以修改了
" plugin/c.vim第94行
" if match( expand("<sfile>"), expand("$HOME") ) == 0
" 修改为
" if match( expand("<sfile>"), expand("$HOME") ) != 0

let g:C_GuiTemplateBrowser = 'explorer'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c-support setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configures for MRU plugin
"let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
"let MRU_Include_Files = '\.c$\|\.h$' 
"let MRU_Add_Menu = 0 
let MRU_File = '/home/zenki/.vim/.vim_mru_files' 
let MRU_Window_Height = 15
let MRU_Use_Current_Window = 0
let MRU_Auto_Close = 1 
let MRU_Max_Entries = 400
nnoremap <S-M> :MRU<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SuperTab 补全设置
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
          \ ["&completefunc:<c-x><c-n>", "&omnifunc:<c-x><c-p>"]

if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \	if &omnifunc == "" |
        \		setlocal omnifunc=omni#cpp#complete#Main |
        \		setlocal omnifunc=pythoncomplete#Complete |
        \		setlocal omnifunc=syntaxcomplete#Complete |
        \	endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 目录管理插件
nnoremap <F1> :NERDTreeToggle<CR>
" 文件与NERDTree关联
nnoremap <F2> :NERDTreeFind<CR>
nnoremap <F3> :TlistToggle<CR>
nnoremap <unique> <silent> <F4> :TagbarToggle<CR>
nnoremap <unique> <silent> <F6> ]`
nnoremap <unique> <silent> <F5> [`
" 标记管理
nmap <silent> <C-F5> :call HLMarks("Marks")<CR>
nmap <silent> <C-F6> :call clearmatches()<CR>
nmap <silent> <F7> :call AddHLMark("Marks")<CR>
nmap <silent> <F8> :call DelHLMark("Marks")<CR>
nmap <silent> <C-S-F8> :call clearmatches()\|:delmarks a-z<CR>

"加入书签
" nnoremap <F3> :Bookmark<CR>
"清除书签
"nnoremap <F3> :ClearBookmarks<CR>
" 显示Taglist
"au FileType c,cpp,java,python,sh,perl,ruby nnoremap <unique> <silent> <F4> :TagbarToggle<CR>
"au FileType txt nnoremap <unique> <silent> <F4> :TlistToggle<CR>

"运行ctags,
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-n> :tn <CR>
map <C-p> :tp <CR>
map <C-l> :ts <CR>

" 当前打开文件列表
map <leader><leader> \be

"TAB,标签页的映射
map <leader>te :tabedit <CR> 
map <leader>tc :tabclose <CR>
"标签页自动编号
set guitablabel=%{tabpagenr()}.%t\ %m

" 字符跳转到行首和行尾
map <S-e> <S-$>
map <S-b> 00

"十六进制显示
map <leader>xx :%!xxd <CR>
map <leader>xr :%!xxd -r <CR>

"列出session名称
map <leader>sl :SessionList <CR>
map <leader>sv :SessionSave <CR>
"map <leader>sc :SessionClose <CR>

"自动最大化
"au GUIEnter * simalt ~x
"
"快速保存
map <leader>w :w! <CR>

"更新types文件
"map <S-U> :UpdateTypesFile <CR>

"单词翻译
"nnoremap <Space> :Trans<CR>
"vnoremap <Space> <ESC>:TransV<CR>

imap <C-x><Tab> <Plug>SnippetComplete

"退出分割窗口
nnoremap <C-c><C-c> <C-w><C-q>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件类型 setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufEnter * set cpoptions+=d " NOTE: ctags find the tags file from the current path instead of the path of currect file
au BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full) 

"au BufNewFile,BufRead,BufEnter *.c,*.h,*.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"cflow
au BufNewFile,BufRead *.cflow set ft=cflow

"conkyrc
au BufNewFile,BufRead *conkyrc set filetype=conkyrc

"python
au BufNewFile,BufRead *.py set filetype=python

"text
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufNewFile *.txt runtime ftplugin/txtfmt.vim
au BufRead,BufNewFile *.txt runtime syntax/txtfmt.vim 

"log
au BufRead,BufNewFile *.log setlocal ft=txt

"Go
au BufRead,BufNewFile *.go setlocal ft=go

" High Level Shader Language
au BufNewFile,BufRead *.hlsl,*.fx,*.fxh,*.cg,*.vsh,*.psh,*.shd,*.glsl,*.shader setf hlsl

" Max Script
au BufNewFile,BufRead *.ms,*.mse,*.mcr,*.mzp,*.ds setf maxscript

" Doxygen Comment
au BufNewFile,BufRead *.dox,*.doxygen setf cpp.doxygen

" gmsh
au BufNewFile,BufRead *.geo setf gmsh

" as (actionscript/flash) I use java analyasis it
au BufNewFile,BufRead *.as setf javascript

" nsis
au BufNewFile,BufRead *.nsh setf nsis

" swig
au BufNewFile,BufRead *.i,*.swg setf swig 

" cs
au BufNewFile,BufRead *.tt setf cs 

" treat gitignore file as config file
au BufNewFile,BufRead *.gitignore setf cfg 

" Matlab or Objective C
au BufNewFile,BufRead *.m call s:ex_FTm()

" txtfmt
au BufNewFile,BufRead *.txtfmt  setf txtfmt

"vimwiki
au BufNewFile,BufRead *.wiki    setf vimwiki

"logcat
au BufRead,BufNewFile *.logcat set filetype=logcat

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件类型 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" showmarks setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configures for ShowMarks plugin
let showmarks_include =  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" showmarks setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python补全 setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python 补全文件路径
"autocmd Filetype python setlocal omnifunc=pythoncomplete#Complete
let g:pydiction_location = '/home/zenki/.vim/ftplugin/complete-dict'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python补全 setting }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vimwiki path setting
" V2.0的新特性和修改 {
" 1. 重映射与viki插件冲突的<leader>wi
" nmap <silent><unique> <Leader>wdi <Plug>VimwikiDiaryIndex

" 2. html模板读取html_template参数，因为该参数不起作用，因此需要手动将vimwiki_2_0.tpl覆盖autoload/default.tpl
" 'html_template': '/home/zenki/.vim/vimwiki-template/vimwiki_2_0.tpl',

" 3. 配置文件的格式
" let wiki_1 = {}
" let wiki_1.path = '~/Wiki/vimwiki/学习笔记/'
" let wiki_1.path_html = '/var/ftp/mySITE/site/Wiki/学习笔记_html/'
" let wiki_1.css_name = 'css_style/style_zenki.css'
" let wiki_1.html_template = '/home/zenki/.vim/vimwiki-template/vimwiki_2_0.tpl'
" let wiki_1.syntax = 'markdown'
" let wiki_1.ext = '.md'
" let g:vimwik_list = [wiki_1]
" }

" 4. 修改ftplugin/vimwiki.vim，Vimwiki2HTML方法输出的信息不需要回车确认
" echo 该成echon

" 5. 修改ftplugin/vimwiki.vim，解决snipMate冲突键<Tab>
" inoremap <expr> <buffer> <C-Tab> vimwiki#tbl#kbd_tab()

" 6. 表格的新样式
" \/表示与上一行合并
" > 表示与前一列合并
" | a | b | c |
" | \/| d | > |
" | \/| e | f |

map <silent><unique> wt :VimwikiTable<CR>
map <silent><unique> wg :VimwikiGenerateLinks<CR>
nmap <silent><unique> <Leader>wdi <Plug>VimwikiDiaryIndex

" vimwiki file process
au FileType vimwiki command! W call exvimwiki#SaveAndConvertVimwiki(0)
au FileType vimwiki command! WA call exvimwiki#SaveAndConvertVimwiki(1)
" au FileType vimwiki nnoremap <unique> <silent> <F5> :Vimwiki2HTML<CR>
" au FileType vimwiki nnoremap <unique> <silent> <F6> :VimwikiAll2HTML<CR>

let g:vimwiki_hl_headers = 1
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1
let tlist_vimwiki_settings = 'wiki;h:Headers'
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
"iphone风格
"let g:vimwiki_list = [
            "\   {'path': '~/Wiki/vimwiki/项目管理/', 
            "\   'path_html': '/var/ftp/mySITE/site/Wiki/项目管理_html/',
            "\   'html_header': '/home/zenki/.vim/vimwiki-template/iphone-template/header.tpl',
            "\   'html_footer': '/home/zenki/.vim/vimwiki-template/iphone-template/footer.tpl'}
            "\   ]

let g:vimwiki_list = [
            \   {'path': '~/Wiki/vimwiki/学习笔记/', 
            \   'path_html': '/var/ftp/mySITE/site/Wiki/学习笔记_html/',
            \   'css_name': 'css_style/style_zenki.css',
            \   }
            \   ]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" viki setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufRead,BufNewFile *.viki set filetype=viki
autocmd FileType let g:vikiNameSuffix = ".viki"
autocmd FileType let g:vikiUseParentSuffix = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" viki setting end}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TOHtml setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let html_use_css = 1
let use_xhtml = 1
let html_use_encoding = "utf8"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TOHtml setting }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 1
"Use neocomplcache.
"let g:NeoComplCache_EnableAtStartup = 1
" Use smartcase.
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_SmartCase = 1
" Use camel case completion.
let g:NeoComplCache_EnableCamelCaseCompletion = 1
" Use underbar completion.
let g:NeoComplCache_EnableUnderbarCompletion = 1
" Set minimum syntax keyword length.
let g:NeoComplCache_MinSyntaxLength = 2
" 启用neocomplcache
let g:neocomplcache_enable_at_startup = 0
let g:NeoComplCache_SnippetsDir = $HOME.'/.vim/snippets'

" Define dictionary.
"let g:NeoComplCache_DictionaryFileTypeLists = {
    "\ 'default' : '',
    "\ 'vimshell' : $HOME.'/.vimshell_hist',
    "\ 'scheme' : $HOME.'/.gosh_completions'
"    \ }

" Define keyword.
"if !exists('g:NeoComplCache_KeywordPatterns')
    "let g:NeoComplCache_KeywordPatterns = {}
"endif
"let g:NeoComplCache_KeywordPatterns['default'] = '\h\w*'

" Plugin key-mappings.
" imap <C-l> <Plug>(neocomplcache_snippets_expand)
" smap <C-l> <Plug>(neocomplcache_snippets_expand)
" inoremap <expr><C-g> neocomplcache#undo_completion()
" inoremap <expr><C-l> neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  (pumvisible() ? "\<C-y>":'') . "\<C-f>\<CR>X\<BS>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"
inoremap <expr><BS> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"

" AutoComplPop like behavior.
let g:NeoComplCache_EnableAutoSelect = 0
"inoremap <expr><CR>  (pumvisible() ? "\<C-e>":'') . (&indentexpr != '' ? "\<C-f>\<CR>X\<BS>":"\<CR>")
inoremap <expr><C-h> pumvisible() ? "\<C-e>\<C-h>" : "\<C-h>"
inoremap <expr><BS> pumvisible() ? "\<C-e>\<C-h>" : "\<C-h>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("cscope")
"set csprg=/usr/bin/cscope
"set csto=1
"set cst
"set nocsverb
"" add any database in current directory
"if filereadable("cscope.out")
"cs add cscope.out
"endif
"set csverb
"endif

"0 或 s    查找本 C 符号(可以跳过注释)
"1 或 g    查找本定义
"2 或 d    查找本函数调用的函数
"3 或 c    查找调用本函数的函数
"4 或 t    查找本字符串
"6 或 e    查找本 egrep 模式
"7 或 f    查找本文件
"8 或 i    查找包含本文件的文件

" cscope可用的映射
" nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
" nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" -----------------------
" gtags setting start {{
set cscopetag
set cscopequickfix=c-,d-,e-,f-,g0,i-,s-,t-
set cscopeprg=gtags-cscope
let g:path_to_global_app = $HOME.'/.vim/toolsuit/global'
" Gtags可用的映射
nmap <C-\>s :Gtags<CR><CR> 
nmap <C-\>c :GtagsCursor<CR>
" gtags setting end }}
" -----------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" xterm settings start {1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if &term =~ "xterm"
    "set mouse=a
"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" xterm settings end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ------------------------------------------------------------------ 
" Desc: Visual start {1
" ------------------------------------------------------------------ 
set matchtime=0 " 0 second to show the matching paren ( much faster )
set nu " Show LineNumber
set nowrap " I don't like wrap, cause in split window mode, it feel strange
" ------------------------------------------------------------------ 
" Desc: Visual end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: Vim UI start {1
" ------------------------------------------------------------------ 
set wildmenu " turn on wild menu, try typing :h and press <Tab> 
set showcmd	" display incomplete commands
set cmdheight=1 " 1 screen lines to use for the command-line 
set hid " allow to change buffer without saving 
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set lazyredraw " do not redraw while executing macros (much faster) 
set display+=lastline " for easy browse last line with wrap text
set showfulltag " show tag with function protype.
" ------------------------------------------------------------------ 
" Desc: Vim UI end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: Text edit start {1
" ------------------------------------------------------------------ 
set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary -w '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    silent execute '!' .  'diff ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
endfunction
set ve=block
set foldmethod=marker foldmarker={,} foldlevel=9999
set diffopt=filler,context:9999
" ------------------------------------------------------------------ 
" Desc: Text edit end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: Search start {1
" ------------------------------------------------------------------ 

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
set ignorecase " Set search/replace pattern to ignore case 
set smartcase " Set smartcase mode on, If there is upper case character in the search patern, the 'ignorecase' option will be override.

" set this to use id-utils for global search
set grepprg=lid\ -Rgrep\ -s
set grepformat=%f:%l:%m
" ------------------------------------------------------------------ 
" Desc: Search end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: Syntax start {1
" ------------------------------------------------------------------ 
let c_gnu = 1
let c_no_curly_error = 1
" ------------------------------------------------------------------ 
" Desc: Syntax end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: file types start {1
" ------------------------------------------------------------------ 
" Disable auto-comment for c/cpp and vim-script
au FileType c,cpp set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:// 
au FileType vim set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",f:\"
" ------------------------------------------------------------------ 
" Desc: file types end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: syslog start {1
" ------------------------------------------------------------------ 
au! BufRead,BufNewFile /var/log/syslog* set filetype=syslog 
au! BufRead,BufNewFile /var/log/syslog/* set filetype=syslog 
au! BufRead,BufNewFile /var/log/* set filetype=syslog 
" ------------------------------------------------------------------ 
" Desc: syslog end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: TagList start {1
" ------------------------------------------------------------------ 
" F4:  Switch on/off TagList

"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool 
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself 
let Tlist_Use_Right_Window = 1 " split to the right side of the screen 
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
let Tlist_BackToEditBuffer = 0 " If no close on select, let the user choose back to edit buffer or not
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 50
let Tlist_Compact_Format = 1 " do not show help
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]

" let taglist support shader language as c-like language
let tlist_hlsl_settings = 'c;d:macro;g:enum;s:struct;u:union;t:typedef;v:variable;f:function'
" ------------------------------------------------------------------ 
" Desc: TagList end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: MiniBufExpl start {1
" ------------------------------------------------------------------ 

let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines) 
let g:miniBufExplModSelTarget = 1 " If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplUseSingleClick = 1 " If you would like to single click on tabs rather than double clicking on them to goto the selected buffer. 
let g:miniBufExplMaxSize = 1 " <max lines: default 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers. 
" comment out this, when we open a single file by we, we don't need minibuf opened. Minibu always open in exDev mode, in EnvironmentUpdate 
" let g:miniBufExplorerMoreThanOne = 0 " Setting this to 0 will cause the MBE window to be loaded even

"let g:miniBufExplForceSyntaxEnable = 1 " There is a VIM bug that can cause buffers to show up without their highlighting. The following setting will cause MBE to
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" ------------------------------------------------------------------ 
" Desc: MiniBufExpl end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: OmniCppComplete start {1
" ------------------------------------------------------------------ 

" set completeopt as don't show menu and preview
au FileType java,c,cpp,hlsl set completeopt=menuone

" use global scope search
let OmniCpp_GlobalScopeSearch = 1

" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2

" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1

" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 1

" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1

" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1

" This option can be use if you don't want to parse using namespace declarations in included files and want to add namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" Complete Behaviour
" 禁止"."和"->"补全
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1

" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 0
" ------------------------------------------------------------------ 
" Desc: OmniCppComplete end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: pythoncomplete start {1
" ------------------------------------------------------------------ 

" DISABLE: au FileType python set completeopt=menuone,preview
" NOTE: the preview can show the internal document in a preview window, but I don't think it have too much help
au FileType python set completeopt=menuone,menu,longest,preview
au FileType python set tabstop=4 shiftwidth=4 expandtab
" ------------------------------------------------------------------ 
" Desc: pythoncomplete end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" Desc: LookupFile start {
" ------------------------------------------------------------------ 

nnoremap <unique> <A-S-i> :LUTags<CR>
nnoremap <unique> <leader>lf :LUTags<CR>
nnoremap <unique> <leader>lb :LUBufs<CR>
nnoremap <unique> <silent> <Leader>ll :LUCurWord<CR>

let g:LookupFile_TagExpr = ''
let g:LookupFile_MinPatLength = 3
let g:LookupFile_PreservePatternHistory = 0
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_AllowNewFiles = 0
let g:LookupFile_smartcase = 1
let g:LookupFile_EscCancelsPopup = 1
" ------------------------------------------------------------------ 
" Desc: LookupFile end }
" ------------------------------------------------------------------ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags setting
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"让vim记忆上次编辑的位置
autocmd BufReadPost * 
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \ exe "normal g'\"" |
    \ endif
""让vim记忆上次编辑的位置

set langmenu=none   " always use English menu
behave xterm        " set mouse behavior as xterm
set mouse=a
set viminfo+=!      " make sure it can save viminfo 
set shellredir=>%s\ 2>&1
set updatetime=2000 " default = 4000
set autoread        " auto read same-file change ( better for vc/vim change )
set maxmempattern=1000

set nocompatible
set nonu
"set nu
filetype on 
filetype plugin on
set history=1000 
"set background=light
set autoindent
set cindent
set smartindent
set smarttab
set wrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
set lbr
set bs=2
set wmnu
set wildignore=*.bak,*.o,*.pyc,*~,*.bk
map gj 40j
map gk 40k
" Visual Mode连续缩进
vnoremap < <gv
vnoremap > >gv
"nnoremap <S-j> <C-d>
"nnoremap <S-k> <C-u>
set laststatus=2
" 状态栏
"set statusline=\ [File]\ %F%m%r%h\ %w\ \ [PWD]\ %r%{CurrectDir()}%h\ \ %=[Line]\ %l,%c\ %=\ %P
"set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ [位置=%l,%c%V] [\%p%%\ ] [总行数=%L]
" set statusline=%F\ %{&fileformat},%{&fileencoding},%Y\ [ASCII=%03.3b]\[HEX=%02.2B]\[行=%04l,列=%04v]\[%p%%]\[总行=%L]
set statusline=%F\ \ \ %{&fileformat},%{&fileencoding},%Y\ \ \ A=%03.3b,H=%02.2B\ R=%03l/%L(%p%%),C=%02v

set hidden
"光标离上下边界10行时自动滚动
set scrolloff=10
"TAB键扩展
set expandtab
"设置默认系统剪贴板
"set clipboard=unnamed

"使得注释换行时自动加上空格和星号
"set formatoptions=tcqro
"高亮显示当前行
set cursorline
"显示中文帮助
"set helplang=cn
"当粘贴文本时,使用该属性
" set paste

let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
syntax on

"模板装载路径
let g:template_path = '/home/zenki/.vim/template/*/'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flist setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if filereadable(expand("hints")) 
    "au BufNewFile,BufReadPost *.c,*.C,*.cpp,*.CPP,*.cxx so hints
"endif

" Make various lists of C/C++ functions
"  \p? prototypes : \[px]g: globals   \pc: comment   \pp: all prototypes
"  \x? externs    : \[px]s: statics                  \xx: all externs
"map \fh   :w<CR>:!rm -f hints<CR> :!$HOME'/.vim/toolsuit/flist' -h *.c *.cpp<CR> :so hints<CR>
"map \fc   :w<CR>:!$HOME'/.vim/toolsuit/flist' -c  % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fg   :w<CR>:!$HOME'/.vim/toolsuit/flist' -pg % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fp   :w<CR>:!$HOME'/.vim/toolsuit/flist' -p  % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fs   :w<CR>:!$HOME'/.vim/toolsuit/flist' -ps % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fg   :w<CR>:!$HOME'/.vim/toolsuit/flist' -xg % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fs   :w<CR>:!$HOME'/.vim/toolsuit/flist' -xs % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"map \fx   :w<CR>:!$HOME'/.vim/toolsuit/flist' -x  % >tmp.vim<CR>:r tmp.vim<CR>:!rm tmp.vim<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" flist setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java补全 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java 

" if has("autocmd")
    " autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    " autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
" endif

"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java补全 end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"界面配置 {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (has("gui_running"))
    "GUI配置
    "set guioptions+=b "添加水平滚动条
    "去除工具栏
    set guioptions-=T
    "去除菜单栏
    set guioptions-=m
    "去除右边滚动条
    set guioptions-=r
    set guioptions-=L
    "字体配置
    set guifont=monospace\ 12
    set guifontwide=Consolas\ 12

    "colorscheme ekinivim
    " colorscheme CodeFactoryv3
    "colorscheme fu
    " colorscheme leo
    "colorscheme silent
    "colorscheme ex_lightgray
    "colorscheme mrkn256
    " colorscheme ego
    colorscheme candycode
    "colorscheme tangoshady
    " colorscheme moria
    " let moria_monochrome = 1
    " let moria_fontface = 'mixed'
    "colorscheme earendel

    "pyflakes setting
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
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
    colorscheme candycode_term
    " colorscheme oh_la_la
    "colorscheme candyman
    "colorscheme vibrantink 
    "colorscheme tabula
    "colorscheme maroloccio
    "colorscheme zenburn
endif
"colorscheme maroloccio
"colorscheme hhspring
"colorscheme darktango
"colorscheme delek
"淡色背景
"colorscheme vibrantink 
"黑色背景
"colorscheme moria
"绿色
"colorscheme relaxedgreen
"暗绿色
"colorscheme wuye
"浅绿色
"colorscheme tabula
"浅灰色
"colorscheme zenburn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"颜色配置 }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""