"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" template setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"模板装载路径
let g:template_path = $HOME.'/.vim/template/*/'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" template setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabularize setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 根据指定的字符，对齐文本行
au FileType c,cpp,java,javascript nmap == :Tabularize /= <CR>
au FileType vim nmap == :Tabularize /" <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabularize setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex-suite setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key bind to <F9>,<F10>,<F11>,<F12>
let g:tex_flavor = 'latex'
let g:Tex_HotKeyMappings = ''
" let g:Tex_TaglistSupport = 0
" let g:Tex_InternalTagsDefinitions = 0
" let g:Tex_UseMakefile = 0 

au FIleType tex nmap <buffer>   <leader>tt  :TTemplate <CR>
au FIleType tex nmap <buffer>   <leader>tm  :TMacro <CR>
" au FileType tex nmap    <C-Tab>   <C-j>
" au FileType tex imap    <C-Tab>   <C-j>
" au FileType tex vmap    <C-Tab>   <C-j>
" au FileType tex set keywordprg=:help
au FileType tex set grepprg=grep\ -nH\ $*
au FileType tex set sw=2
au FileType tex set iskeyword+=:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Latex-suite setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode测试 ------------------
let g:pymode_options_indent = 1
let g:pymode_options_other = 1

" 帮助文档 ------------------
" Load show documentation plugin
let g:pymode_doc = 0
" Key for show python documentation
let g:pymode_doc_key = 'K'

" 运行代码 ------------------
" Load run code plugin
let g:pymode_run = 0
" Key for run python code
let g:pymode_run_key = '<leader>r'

" 运行代码 ------------------
" Load pylint code plugin
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501"
" Select errors and warnings. E.g. "E4,W"
let g:pymode_lint_select = ""
" Run linter on the fly
let g:pymode_lint_onfly = 0
" Pylint configuration file
" If file not found use 'pylintrc' from python-mode plugin directory
let g:pymode_lint_config = "$HOME/.pylintrc"
" Check code every save
let g:pymode_lint_write = 0
" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1
" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1
" Auto jump on first error
let g:pymode_lint_jump = 1
" Hold cursor in current window, when quickfix is open
let g:pymode_lint_hold = 0
" Place error signs
let g:pymode_lint_signs = 1
" Maximum allowed mccabe complexity
let g:pymode_lint_mccabe_complexity = 8
" Minimal height of pylint error window
let g:pymode_lint_minheight = 3
" Maximal height of pylint error window
let g:pymode_lint_maxheight = 10

" ROPE ------------------
" Load rope plugin
let g:pymode_rope = 1
" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1
" Enable autoimport
let g:pymode_rope_enable_autoimport = 1
" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_global_prefix = "<C-x>p"
let g:pymode_rope_local_prefix = "<C-c>r"
let g:pymode_rope_vim_completion = 0
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = ""
let g:pymode_rope_always_show_complete_menu = 0

" Folding ------------------
" Enable python folding
let g:pymode_folding = 1

" Motion ------------------
" Enable python objects and motion
let g:pymode_motion = 1

" 其他 ------------------
" Additional python paths
let g:pymode_paths = []
" Load breakpoints plugin
let g:pymode_breakpoint = 1
" Key for set/unset breakpoint
let g:pymode_breakpoint_key = '<leader>b'
" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 1
" Enable pymode indentation
let g:pymode_indent = 1
" Set default pymode python options
let g:pymode_options = 1

au FileType python nmap == :PyLintAuto <CR>
au FileType python nmap -- :PyLint <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indexer setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indexer_ctagsCommandLineOptions = '--sort=yes --c-kinds=+p --c++-kinds=+p --fields=+iaKSz --fields=+lS --extra=+q --languages=c,c++,c#,java,python,vim,matlab,make,sh,ruby,perl,html,javascript,php,tex,lisp,lua, --langmap=c++:+.inl'
let g:indexer_disableCtagsWarning = 1
" let g:indexer_ctagsCommandLineOptions = '--sort=yes --c++-kinds=+p --fields=+iaS --fields=+lS --extra=+q'
" let g:indexer_indexerListFilename = $HOME.'/.indexer_files'
" let g:indexer_projectsSettingsFilename = $HOME.'/.vimprojects'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indexer setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimExplorer setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ve :VE <CR><CR>
" 设置删除文件的回收站位置
let g:VEConf_recyclePath = $HOME.'/.local/share/Trash/files/'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimExplorer setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yate setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-y> :YATE<CR>

" 退出后不清除查询结果
let g:YATE_clear_search_string = 0
" 设置结果窗口的高度
" let g:YATE_window_height = 15
" 截断长文件名
" let g:YATE_strip_long_paths  = 1
" 实时查询结果
" let g:YATE_enable_real_time_search = 1
" 开启查询的最小字符个数
" let g:YATE_min_symbols_to_search = 4 
" 符合查询条件的最大个数
" let g:YATE_max_matches_to_show = -1
" 历史记录的个数
" let g:YATE_history_size = 10
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yate setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filtering setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,F :call Gather(input("Filter on term: "), 0)<CR>
nnoremap ,f :call Gather(@/, 0)<CR>:echo<CR>
nnoremap ,G :call GotoOpenSearchBuffer()<CR>
nnoremap ,d :call CloseAllSearchWindows()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filtering setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PreciseJump setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,, _f
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PreciseJump setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitv setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 水平分割窗口
let g:Gitv_CommitStep = 10
let g:Gitv_OpenHorizontal = 1
nmap <Leader>gv :Gitv --no-merges<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gt :Gtabedit<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitv setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autoclose setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置需要自动补全的字符对
let g:AutoClosePairs = {'{': '}', '[': ']', '"': '"', "'": "'", '(':')', '（':'）'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autoclose setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffers_search_and_replace setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ,bs :Bs 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffers_search_and_replace setting end }
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
function DiffModeMappingNext()
    if &diff
        normal ]c
    else
        normal }
    endif
endfunction

function DiffModeMappingPre()
    if &diff
        normal [c
    else
        normal {
    endif
endfunction

nmap <silent> ]] :call DiffModeMappingNext()<CR>
nmap <silent> [[ :call DiffModeMappingPre()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dirdiff setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_briefTag_pre="@Synopsis "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns "
"let g:DoxygenToolkit_blockHeader="---------------------------"
"let g:DoxygenToolkit_blockFooter="----------------------------"
let g:DoxygenToolkit_authorName="Zenki J.Zha, zenki2001cn@163.com"
let g:DoxygenToolkit_licenseTag="Zenki J.Zha, Copyright(C) All right reserved."

nnoremap ,cf :Dox<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_commenter setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1         " 让注释符与语句之间留一个空格
let g:NERDCompactSexyComs=1     " 多行注释时样子更好看
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD_commenter setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTreeAck setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:path_to_search_app = $HOME.'/.vim/toolsuit/ack'
" let g:path_to_search_app = 'grep'
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
" MRU setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configures for MRU plugin
"let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
"let MRU_Include_Files = '\.c$\|\.h$' 
"let MRU_Add_Menu = 0 
let MRU_File = $HOME.'/.vim_mru_files' 
let MRU_Window_Height = 15
let MRU_Use_Current_Window = 0
let MRU_Auto_Close = 1 
let MRU_Max_Entries = 400
nnoremap <S-M> :MRU<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MRU setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" showmarks setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configures for ShowMarks plugin
let showmarks_include =  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Enable ShowMarks
let showmarks_enable = 0
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
" python补全 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python 补全文件路径
let g:pydiction_location = $HOME.'/.vim/ftplugin/complete-dict'
let g:pydiction_menu_height = 20
autocmd FileType python setlocal complete+=k$HOME/.vim/ftplugin/complete-dict iskeyword+=^.
autocmd FileType python setlocal dict=$HOME/.vim/ftplugin/complete-dict
au FileType python set tabstop=4 shiftwidth=4 expandtab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python补全 setting }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki setting {
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

nmap <silent><unique> wt :VimwikiTable<CR>
nmap <silent><unique> wg :VimwikiGenerateLinks<CR>
nmap <silent><unique> <Leader>wdi <Plug>VimwikiDiaryIndex

" vimwiki file process
au FileType vimwiki command! W call exvimwiki#SaveAndConvertVimwiki(0)
au FileType vimwiki command! WA call exvimwiki#SaveAndConvertVimwiki(1)

let g:vimwiki_hl_headers = 1
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1
let tlist_vimwiki_settings = 'wiki;h:Headers'
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
let g:vimwiki_ext2syntax = {'.md': 'markdown'}

" 禁止自动删除的html文件
let g:vimwiki_user_htmls = '404.html,search.html'

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
" viki setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufRead,BufNewFile *.viki set filetype=viki
autocmd FileType let g:vikiNameSuffix = ".viki"
autocmd FileType let g:vikiUseParentSuffix = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" viki setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TOHtml setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let html_use_css = 1
let use_xhtml = 1
let html_use_encoding = "utf8"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TOHtml setting }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_ignore_case = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" 当输入关键字超过指定长度时，将该关键字记录在cache中
let g:neocomplcache_min_keyword_length = 6
" 自动补全的输入字符数
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" 是否在打开VIM时启用neocomplcache功能
" YCM
let g:neocomplcache_enable_at_startup = 0
" snippets的目录设定
let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'
" 是否自动选择补全选项
let g:neocomplcache_enable_auto_select = 0
" 禁用自动补全
" YCM
let g:neocomplcache_disable_auto_complete = 1
let g:neocomplcache_enable_cursor_hold_i = 0
let g:neocomplcache_enable_insert_char_pre = 0

" 已注释的设定
" let g:neocomplcache_manual_completion_start_length = 10

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" 加入该字典，防止crash
if !exists('g:neocomplcache_plugin_rank')
    let g:neocomplcache_plugin_rank = {}
endif

" Plugin key-mappings.
imap <C-k>  <Plug>(neocomplcache_snippets_expand)
smap <C-k>  <Plug>(neocomplcache_snippets_expand)
" inoremap <expr><C-g>    neocomplcache#undo_completion()
" inoremap <expr><C-l>    neocomplcache#complete_common_string() 

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType c,cpp set omnifunc=omni#cpp#complete#Main
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif

" let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
" let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" 禁用neocomplcache功能
function ToggleNeocomcacheAutoComplete()
    if g:neocomplcache_disable_auto_complete == 1
        let g:neocomplcache_disable_auto_complete = 0
        echon "Enable auto complete"
    else
        let g:neocomplcache_disable_auto_complete = 1
        echon "Disable auto complete"
    endif
endfunction
nmap <C-x><Tab> :call ToggleNeocomcacheAutoComplete()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SnippetComplete & SnippetCompleteSnipMate setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-x><C-l> <Plug>(SnippetComplete)
imap <C-l> <Plug>(SnippetCompleteSnipMate)

" 与SnippetComplete共有一个快捷键
" imap <Plug>Disable(SnippetCompleteSnipMate) <Plug>(SnippetCompleteSnipMate)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SnippetComplete & SnippetCompleteSnipMate setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4

nmap <C-n> :tn <CR>
nmap <C-b> :tp <CR>
nmap <C-l> :ts <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" utags setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key bind to <F5>, <F6>
nmap <C-\>u :call FindTagUsage( expand("<cword>"), "", 0 )<CR>
nmap <C-\>d :call FindTagUsage( expand("<cword>"), "\.h$", 0 )<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" utags setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope & gtags setting {
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
" cscope & gtags setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" -------------------------------------------------------------
" Text edit start {
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
" Text edit end }
" -------------------------------------------------------------

" -------------------------------------------------------------
" Syntax start {
" ------------------------------------------------------------------ 
let c_gnu = 1
let c_no_curly_error = 1
" ------------------------------------------------------------------ 
" Syntax end }
" -------------------------------------------------------------

" -------------------------------------------------------------
" file types start {
" ------------------------------------------------------------------ 
" Disable auto-comment for c/cpp and vim-script
au FileType c,cpp set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:// 
au FileType vim set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",f:\"
" ------------------------------------------------------------------ 
" file types end }
" -------------------------------------------------------------

" -------------------------------------------------------------
" TagList start {
" ------------------------------------------------------------------ 
" key bind to <F3>
let Tlist_Show_One_File = 1             " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1          " if you are the last, kill yourself 
let Tlist_Use_Right_Window = 1          " split to the right side of the screen 
let Tlist_Sort_Type = "order"           " sort by order or name
let Tlist_Display_Prototype = 0         " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1            " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1   " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1     " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 0       " Close the taglist window when a file or tag is selected.
let Tlist_BackToEditBuffer = 0      " If no close on select, let the user choose back to edit buffer or not
let Tlist_Enable_Fold_Column = 0    " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 50
let Tlist_Compact_Format = 1        " do not show help
let Tlist_File_Fold_Auto_Close=1    "Auto fold file that not edited
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]

" let taglist support shader language as c-like language
let tlist_hlsl_settings = 'c;d:macro;g:enum;s:struct;u:union;t:typedef;v:variable;f:function'
" ------------------------------------------------------------------ 
" TagList end }
" -------------------------------------------------------------

" -------------------------------------------------------------
" OmniCppComplete start {
" ------------------------------------------------------------------ 

" set completeopt as don't show menu and preview
au FileType * set completeopt=menuone,menu,longest

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
" OmniCppComplete end }
" -------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_complete_copen = 1
let g:clang_hl_errors = 1
let g:clang_snippets = 1
let g:clang_close_preview = 1
let g:clang_use_library = 1
let g:clang_library_path = '/usr/local/lib'
let g:clang_user_options = ''
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CCTree setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key bind to <F7>,<F8>
let g:CCTreeUseUTF8Symbols = 0              " 使用UTF8的符号显示折叠
let g:CCTreeCscopeDb = "cscope.out"
let g:CCTreeKeyCompressTree = 'zs'          " Compress call-tree

let g:CCTreeKeyTraceForwardTree = '<C-F8>'
let g:CCTreeKeyTraceReverseTree = '<C-F7>'
let g:CCTreeKeyHilightTree = '<F7>l'        " Static highlighting
let g:CCTreeKeySaveWindow = '<F7>y'
let g:CCTreeKeyToggleWindow = '<F7>w'
let g:CCTreeKeyDepthPlus = '<F7>='
let g:CCTreeKeyDepthMinus = '<F7>-'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CCTree end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java补全 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 补全需要将相关的jar加入到环境变量$CLASSPATH中
autocmd BufNewFile,BufRead,BufReadPost Filetype java setlocal complete-=k 
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
"inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
"inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" java补全 end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:javascript_fold = 1
let javascript_enable_domhtmlcss = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" javascript & jsl end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jad setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jad_bin_path = $HOME.'/.vim/toolsuit/jad'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jad end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfixsigns setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:quickfixsigns_classes = ['qfl', 'loc', 'marks', 'vcsdiff', 'breakpoints']
let g:quickfixsigns#vcsdiff#vcs = {
    \ 'git': {'cmd': 'git diff --no-ext-diff -U0 %s', 'dir': '.git'}
    \ , 'svn': {'cmd': 'svn diff --diff-cmd diff --extensions -U0 %s', 'dir': '.svn'}
    \ , 'hg': {'cmd': 'hg diff -U0 %s', 'dir': '.hg'}
    \ , 'bzr': {'cmd': 'bzr diff --diff-options=-U0 %s', 'dir': '.bzr'}
    \ }
nnoremap <Leader>qs :QuickfixsignsToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfixsigns end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" google-translator setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goog_user_conf = {'langpair':'en|zh', 'v_key':'T'}
let g:goog_switch_mode = 1
nmap <leader>ts :call SwitchTranslatorLanguage()<CR>
nmap <leader>tss :call SelectTranslatorLanguage()<CR>
nmap T VT
nmap <leader>t :call TranslateSingle(0)<CR>
nmap <leader>tr :call TranslateSingle(1)<CR>
nmap <leader>ta :call TranslateAll(0)<CR>
nmap <leader>tar :call TranslateAll(1)<CR>
nmap <leader>tf :call TranslateFormatter()<CR>

function TranslateSingle(remove_org)
    exec "normal V,GTS"
    if a:remove_org == 1
        exec "normal dd"
        exec "normal 2k"
        exec "normal dd"
    endif
endfunction

function TranslateAll(remove_org)
    exec "normal gg"

    let all_lines = line("$")
    let cur_line = line(".")
    while cur_line <= all_lines
        exec "normal V,GTS"

        if cur_line == all_lines
            if a:remove_org == 1 && exists('g:google_translate_result') && g:google_translate_result != ''
                exec "normal 2k"
                exec "normal dd"
                exec "normal j"
                exec "normal dd"
            endif

            break
        endif

        if a:remove_org == 1 && exists('g:google_translate_result') && g:google_translate_result != ''
            exec "normal 2k"
            exec "normal dd"
            exec "normal j"
            exec "normal dd"
        else
            exec "normal j"
        endif

        let cur_line = line(".")
        let all_lines = line("$")
    endw
        
    echon 'Translate finished, enjoy it!'
endfunction

function SwitchTranslatorLanguage()
    if g:goog_switch_mode == 1
        let g:goog_user_conf = {'langpair':'zh|en', 'v_key':'T'}
        let g:goog_switch_mode = 0
        echohl Special | echomsg 'Switch to zh->en mode' | echohl None
    else
        let g:goog_user_conf = {'langpair':'en|zh', 'v_key':'T'}
        let g:goog_switch_mode = 1
        echohl Special | echomsg 'Switch to en->zh mode' | echohl None
    endif
    call MergeConf()
endfunction

function TranslateLanguageOptions(A,L,P)
    return ['zh|en', 'zh|zh-tw', 'zh-tw|zh', 'zh|ja', 'zh|ko', 'zh|fr', 'zh|de', 
        \ 'en|zh', 'en|ja', 'en|ko', 'en|fr', 'en|de',
        \ 'ja|zh', 'ja|en', 'ja|ko', 'ja|fr', 'ja|de',
        \ 'ko|zh', 'ko|en', 'ko|ja', 'ko|fr', 'ko|de',
        \ 'ko', 'th', 'fr', 'ru', 'ar', 'es', 'hi', 'tr', 'de',
        \ ]
endfunction

function SelectTranslatorLanguage()
    echohl Special | echomsg 'zh(中文), zh-tw(繁体), en(英文), ja(日文), ko(韩文), th(泰文), fr(法文)'
    echohl Special | echomsg 'ru(俄文), ar(阿拉伯文), es(西班牙文), hi(印度文), tr(土耳其文), de(德文)'
    echohl None
    let langpair  = input("(Format:zh|en) Select Language: ",'zh|', 'customlist,TranslateLanguageOptions')
    if langpair == ''
        let langpair = 'zh|en'
    endif

    let g:goog_user_conf = {'langpair':langpair, 'v_key':'T'}
    redraw | echohl Special | echomsg 'Switch to <'. langpair . '> mode'
    echohl None
    call MergeConf()
endfunction

function TranslateFormatter()
    let split_text = input("Input split token: ",'.')
    if split_text == '' || split_text == '.'
        let split_text = '\.'
    endif

    exec '%s/'.split_text.'/'.split_text.'\r/g'
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" google-translator end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpplint & jsl setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" by LintCheck checking cpp,javascript syntax
function MyLintCheck()
    if &ft == 'cpp'
        set makeprg=$HOME'/.vim/toolsuit/cpplint.py'\ %
        silent exec 'make'
    elseif &ft == 'javascript'
        set makeprg=$HOME'/.vim/toolsuit/jsl'\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ $HOME'/.vim/toolsuit/jsl.conf'\ -process\ %
        silent exec 'make'
    endif
    
    set makeprg=make
    silent exec 'copen'
endfunction

autocmd FileType cpp,javascript nmap -- :call MyLintCheck()<CR>

" CPP old style
" autocmd FileType cpp set makeprg=$HOME'/.vim/toolsuit/cpplint.py'\ %
" autocmd FileType cpp nmap <silent><buffer> -- :make<CR> :cw<CR>

" jsl old style
" autocmd FileType javascript set makeprg=$HOME'/.vim/toolsuit/jsl'\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ $HOME'/.vim/toolsuit/jsl.conf'\ -process\ %
" autocmd FileType javascript set errorformat=%f(%l):\ %m
" autocmd FileType javascript nmap <silent><buffer> -- :make<CR><CR> :cw<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpplint end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" conflict_detection setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight def conflictOurs                      guibg=Green
highlight def conflictBase                      guibg=Brown
highlight def conflictTheirs                    guibg=Red
highlight def conflictSeparatorMarkerSymbol     guifg=Black
highlight def conflictOursMarker                guifg=Green
highlight def conflictBaseMarker                guifg=Brown
highlight def conflictTheirsMarker              guifg=Red
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" conflict_detection end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rename setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" require cscope support
nmap <leader>rc :call Renamec()<CR>
nmap <leader>rr :bufdo undo<CR>
nmap <leader>rf :call Renamef()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rename end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TxtBrowser setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let TxtBrowser_Dict_Url = 'http://dict.cn/text'
let Txtbrowser_Search_Engine='http://www.baidu.com/s?wd=text&oq=text&f=3&rsp=2'
let g:TxtBrowser_Use_W3m = 1      " default use W3m to open url
nmap <Leader>g  :TGoto<CR>
nmap <Leader>f  :TFind<CR>
nmap <Leader>s  :TSearch<CR>

" W3m功能切换
function ToggleTxtBrowserUseW3m()
    if g:TxtBrowser_Use_W3m == 1
        let g:TxtBrowser_Use_W3m = 0
        echon "Disable W3m"
    else
        let g:TxtBrowser_Use_W3m = 1
        echon "Enable W3m"
    endif
endfunction
nmap <C-x>w :call ToggleTxtBrowserUseW3m()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TxtBrowser end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SnipMate setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:snips_author = 'Zenki.J.Zha'
let g:snippet_version = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SnipMate end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TWL setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>tw :TWL <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TWL end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clam setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ! :Clam<space>
vnoremap ! :ClamVisual<space>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clam end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" w3m setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:w3m#external_browser = 'firefox'
let g:w3m#homepage = "http://www.baidu.com/"
let g:w3m#search_engine = 
    \ 'http://www.baidu.com/s?wd='
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" w3m end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CommandT setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>ct :CommandT<CR>
nnoremap <silent> <Leader>cb :CommandTBuffer<CR>

let g:CommandTMaxFiles = 100000
let g:CommandTMaxDepth = 100
let g:CommandTMaxCachedDirectories = 10
let g:CommandTCancelMap = ['<C-c>', '<ESC>']
" let g:CommandTSelectNextMap = 'j'
" let g:CommandTSelectPrevMap = 'k'
" let g:CommandTAcceptSelectionSplitMap = 's'
" let g:CommandTAcceptSelectionVSplitMap = 'v'
" let g:CommandTAcceptSelectionTabMap = 't'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CommandT setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_files = 100000
let g:ctrlp_max_depth = 100
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_multiple_files = '1vji'
let g:ctrlp_dotfiles = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(swp|so)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vscommand setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let VCSCommandCommitOnWrite = 0
let VCSCommandDeleteOnHide = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vscommand end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  a setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>a :A <CR>
nmap <leader>A :IH <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  a end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  maximizer setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap wo :MaximizerToggle <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  maximizer end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  filepirate setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:filepirate_map_leader=0
let g:filepirate_up = "<C-k>"
let g:filepirate_down = "<C-j>"
nmap <C-x><C-f> :python filepirate_open()<CR>
let g:filepirate_rescan="<F5>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  filepirate end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  gitlog setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:GITLOG_default_mode = 2     " 1 为分支模式，2 为文件树
nmap <silent> <leader>cg :call GITLOG_ToggleWindows()<cr>
nmap <silent> <leader>cf :call GITLOG_FlipWindows()<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  gitlog end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SuperTab 补全设置
" let g:SuperTabDefaultCompletionType = "<c-x><c-u><c-p>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery =
          \ ["&completefunc:<c-x><c-n>", "&omnifunc:<c-x><c-p>"]
" let g:SuperTabNoCompleteBefore = []
" let g:SuperTabNoCompleteAfter = ['\s']

" 禁用，与自动补全冲突
" if has("autocmd") && exists("+omnifunc")
    " autocmd Filetype *
        " \ if &omnifunc == "" |
            " \ setlocal omnifunc=syntaxcomplete#Complete |
        " \ endif
" endif

autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, "<c-p>") |
    \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
    \ endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  accelerated setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  accelerated end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  RocketJump setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> gL :call RocketJump#PerformJump(0) <CR>
noremap <silent> gv V <bar> :call RocketJump#PerformJump(1) <CR>
vnoremap <silent> gL :call RocketJump#PerformJump(1) <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  RocketJump end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Narrow setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <C-x><C-n> :NR<CR>
let g:nrrw_rgn_update_orig_win = 1
let g:nrrw_rgn_write_on_sync = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Narrow end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Replay setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:replay_record = 'ffmpeg'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Replay end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  MPage setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <C-x><C-m> :MPage 2<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  MPage end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  startify setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_dir = $HOME.'/.vim_sessions/'
let g:startify_empty_buffer_key = 'o'
let g:startify_enable_special = 0
let g:startify_files_number = 10
let g:startify_lists = ['files', 'dir', 'bookmarks', 'sessions']
let g:startify_custom_indices = ['a', 'j', 'd', 'f', 'k', 'l']
let g:startify_restore_position = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  startify end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  nextval setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <unique> + <Plug>nextvalInc
nmap <silent> <unique> _ <Plug>nextvalDec
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  nextval end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  GoldenView setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goldenview__enable_at_startup = 0
let g:goldenview__enable_default_mapping = 0
nmap <silent> ,w <Plug>GoldenViewResize
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  GoldenView end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VTermStart setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap !! :VTermStart<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VTermStart end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yankring setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,yy  :YRShow<CR>
nnoremap ,ys :YRSearch<CR>
let g:yankring_history_file = '.yankring_history_file'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yankring end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bufExplorer setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerShowNoName = 0 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bufExplorer end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" conflict-slides setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,ll :call CS_LockCurrentConflict()<CR>
nnoremap ,ln :call CS_MoveCursorToCurrentConflict()<CR>
nnoremap ,lr :call CS_ReleaseLockedConflict()<CR>
nnoremap ,li :call CS_DisplayCurrentLockInfo()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" conflict-slides end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyAlign setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> <Enter> :EasyAlign<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyAlign end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Crunch setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> cl :CrunchLine<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Crunch end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1        " 激活插件
let g:rainbow_conf = {
    \   'guifgs': ['white', 'darkorange3', 'seagreen3', 'firebrick', 'royalblue3'],
    \   'ctermfgs': ['white', 'darkgray', 'darkmagenta', 'darkcyan', 'darkblue'],
    \   'operators': '_,_',
    \   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
    \   'separately': {
    \       '*': {},
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
    \       },
    \       'html': {
    \           'parentheses': [['(',')'], ['\[','\]'], ['{','}'], ['<\a[^>]*[^/]>\|<\a>','</[^>]*>']],
    \       },
    \       'vim': {
    \           'parentheses': [['fu\w* \s*.*)','endfu\w*'], ['for','endfor'], ['while', 'endwhile'], ['if','_elseif\|else_','endif'], ['(',')'], ['\[','\]'], ['{','}']],
    \       },
    \       'tex': {
    \           'parentheses': [['(',')'], ['\[','\]'], ['\\begin{.*}','\\end{.*}']],
    \       },
    \       'css': 0,
    \       'stylus': 0,
    \   }
    \}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rainbow end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChooseWin start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap  <S-w>  <Plug>(choosewin)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChooseWin end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChooseWin start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> ,/ :BetterSearchPromptOn<cr>
vnoremap <silent> ,/ :BetterSearchVisualSelect<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ChooseWin end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-bookmarks start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:bookmark_auto_close = 0
" let g:bookmark_highlight_lines = 0
" let g:bookmark_show_warning = 1
" let g:bookmark_center = 0
" let g:bookmark_auto_save = 0
" let g:bookmark_sign = '>>'
" let g:bookmark_annotation_sign = '##'
" let g:bookmark_save_per_working_dir = 1
" let g:bookmark_auto_save_file = '/bookmarks'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-bookmarks end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" restore-view start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" restore-view end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" isort start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vim_isort_map = '<C-i>'
nnoremap <C-i> :Isort <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" isort end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" incsearch start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" incsearch end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}
let g:ycm_show_diagnostics_ui = 1
let g:ycm_error_symbol = '>e'
let g:ycm_warning_symbol = '>w'
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1
let g:ycm_always_populate_location_list = 0
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_allow_changing_updatetime = 1
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_seed_identifiers_with_syntax = 0
let g:ycm_extra_conf_vim_data = []
let g:ycm_path_to_python_interpreter = ''
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 0
let g:ycm_server_log_level = 'info'
let g:ycm_auto_start_csharp_server = 1
let g:ycm_auto_stop_csharp_server = 1
let g:ycm_csharp_server_port = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_max_diagnostics_to_display = 30
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:ycm_key_invoke_completion = '<TAB>'

let g:ycm_global_ycm_extra_conf = ''    " 默认配置文件路径
let g:ycm_confirm_extra_conf = 0        " 是否弹出确认加载配置的提示
let g:ycm_extra_conf_globlist = []      " 配置文件搜索目录
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_cache_omnifunc = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_goto_buffer_command = 'same-buffer'
let g:ycm_disable_for_files_larger_than_kb = 80000
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" webdevicons end {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeSortHiddenFirst = 0
let g:airline_powerline_fonts=1
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
set encoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" webdevicons end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
