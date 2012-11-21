"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutomaticLaTeXPlugin setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " let g:atp_tab_map   = 1
" " let g:atp_Compiler  = 'python'
" " let g:atp_local_completion = 1

" nmap  <silent> <buffer> <F12>s	        <Plug>ToggleStar
" nmap  <silent> <buffer> <F12><F12>s	    <Plug>TogglesilentMode
" nmap  <silent> <buffer> <F12><F12>d	    <Plug>ToggledebugMode
" nmap  <silent> <buffer> <F12><F12>D	    <Plug>ToggleDebugMode

" vmap  <silent> <buffer> <S-F12>			<Plug>WrapEnvironment
" nmap  <silent> <buffer> <S-F12>			<Plug>ChangeEnv
" imap  <silent> <buffer> <S-F12>			<C-O><Plug>ChangeEnv
" nmap  <silent> <buffer> <S-F12>T		<Plug>ToggleEnvForward

" nmap  <silent> <buffer> <C-F12>v        <Plug>ATP_ViewOutput_sync
" nmap  <silent> <buffer> <C-F12>n		<Plug>ATP_ViewOutput_nosync
" nmap  <silent> <buffer> <C-F11>V        <Plug>ATP_ViewLocalOutput_sync
" nmap  <silent> <buffer> <C-F11>N		<Plug>ATP_ViewLocalOutput_nosync
" imap  <silent> <buffer> <S-F12>v 		<C-O><Plug>ATP_ViewOutput_sync
" imap  <silent> <buffer> <S-F12>V 		<C-O><Plug>ATP_ViewLocalOutput_sync

" nmap  <silent> <buffer> <F12>g 		    <Plug>Getpid
" nmap  <silent> <buffer> <F12>t		    <Plug>ATP_TOC
" nmap  <silent> <buffer> <F12>L		    <Plug>ATP_Labels
" nmap  <silent> <buffer> <F12>l 		    <Plug>ATP_TeXCurrent
" nmap <silent> <buffer>  <F12><F12>l     <Plug>ATP_TeXLocal
" nmap  <silent> <buffer> <C-F12>d 		<Plug>ATP_TeXdebug
" nmap  <silent> <buffer> <C-F12>D 		<Plug>ATP_TeXDebug
" nmap  <silent> <buffer> <S-F12>D 		<Plug>ATP_TeXVerbose

" nmap  <silent> <buffer> <S-F11> 		<Plug>ToggleAuTeX
" imap  <silent> <buffer> <S-F11> 		<C-O><Plug>ToggleAuTeX
" nmap  <silent> <buffer> `<Tab>			<Plug>ToggleTab
" imap  <silent> <buffer> `<Tab>			<Plug>ToggleTab
" nmap  <silent> <buffer> '<Tab>			<Plug>ToggleIMaps
" imap  <silent> <buffer> '<Tab>			<Plug>ToggleIMaps
" nmap  <silent> <buffer> <F12>B		    <Plug>SimpleBibtex
" nmap  <silent> <buffer> <F12>b		    <Plug>BibtexDefault

" nmap  <silent> <buffer> <F11>d 			<Plug>Delete
" imap  <silent> <buffer> <F11>d			<C-O><Plug>Delete
" nmap  <silent> <buffer> <F11>l 			<Plug>OpenLog
" imap  <silent> <buffer> <F11>l 			<C-O><Plug>OpenLog
" nmap  <silent> <buffer> <F11>e 			:ShowErrors e<CR>
" imap  <silent> <buffer> <F11>e 			:ShowErrors e<CR>
" nmap  <silent> <buffer> <F11>E		    :ShowErrors<CR>
" nmap  <silent> <buffer> <F11>w 			:ShowErrors w<CR>
" imap  <silent> <buffer> <F11>w 			:ShowErrors w<CR>
" nmap  <silent> <buffer> <F11>r 			:ShowErrors rc<CR>
" imap  <silent> <buffer> <F11>r 			:ShowErrors rc<CR>
" nmap  <silent> <buffer> <F11>f 			:ShowErrors f<CR>
" imap  <silent> <buffer> <F11>f 			:ShowErrors f<CR>
" nmap  <silent> <buffer> <F11>g 			<Plug>PdfFonts

" nmap           <buffer> <C-F11>			<Plug>TexDoc
" imap           <buffer> <C-F11> 		<Plug>iTexDoc

" nmap <buffer> <silent> <F12>f		<Plug>SyncTexKeyStroke
" nmap <buffer> <silent> <F12><F12>f	<Plug>SyncTexLKeyStroke
" nmap <buffer> <silent> <F12>F		<Plug>SyncTexLKeyStroke

" au FileType tex     imap <buffer> <C-n> <Plug>TexJMotionForward
" au FileType tex     nmap <buffer> <C-n> <Plug>TexJMotionForward
" au FileType tex     imap <buffer> <C-p> <Plug>TexJMotionBackward
" au FileType tex     nmap <buffer> <C-p> <Plug>TexJMotionBackward
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AutomaticLaTeXPlugin setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inccomplete setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:inccomplete_findcmd = '/usr/bin/find'
" let g:inccomplete_addclosebracket = ''
" let g:inccomplete_sort = ''
" let g:inccomplete_showdirs = 0
" let g:inccomplete_appendslash = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inccomplete setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pyflake setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight SpellBad term=underline gui=undercurl guisp=Orange 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pyflake setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set laststatus=2
" set -g default-terminal "screen-256color"
" set fillchars+=stl:\ ,stlnc:\
" let g:Powerline_symbols = 'fancy'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline setting end }
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
" c-support setting start {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 由于默认会查找系统配置文件，所以修改了
" plugin/c.vim第94行
" if match( expand("<sfile>"), expand("$HOME") ) == 0
" 修改为
" if match( expand("<sfile>"), expand("$HOME") ) != 0

" let g:C_GuiTemplateBrowser = 'explorer'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c-support setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ------------------------------------------------------------------ 
" MiniBufExpl start {
" ------------------------------------------------------------------ 
" let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines) 
" let g:miniBufExplModSelTarget = 1 " If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
" let g:miniBufExplUseSingleClick = 1 " If you would like to single click on tabs rather than double clicking on them to goto the selected buffer. 
" let g:miniBufExplMaxSize = 1 " <max lines: default 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers. 
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" " comment out this, when we open a single file by we, we don't need minibuf opened. Minibu always open in exDev mode, in EnvironmentUpdate 
" " let g:miniBufExplorerMoreThanOne = 0 " Setting this to 0 will cause the MBE window to be loaded even
" " let g:miniBufExplForceSyntaxEnable = 1 " There is a VIM bug that can cause buffers to show up without their highlighting. The following setting will cause MBE to
" ------------------------------------------------------------------ 
" MiniBufExpl end }
" ------------------------------------------------------------------ 

" ------------------------------------------------------------------ 
" LustyExplorer start {
" ------------------------------------------------------------------ 
" nnoremap <unique> <leader>lf :LUTags<CR>
" nnoremap <unique> <leader>lb :LUBufs<CR>
" nnoremap <unique> <silent> <Leader>ll :LUCurWord<CR>

" let g:LookupFile_TagExpr = ''
" let g:LookupFile_MinPatLength = 3
" let g:LookupFile_PreservePatternHistory = 0
" let g:LookupFile_PreserveLastPattern = 0
" let g:LookupFile_AllowNewFiles = 0
" let g:LookupFile_smartcase = 1
" let g:LookupFile_EscCancelsPopup = 1
" ------------------------------------------------------------------ 
" LustyExplorer end }
" ------------------------------------------------------------------ 

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

