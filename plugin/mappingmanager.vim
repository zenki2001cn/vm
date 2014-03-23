" {{{
" mappingmanager.vim
" a plugin for easy navigation between keyboard mappings
"
" PROBLEM
" =======
" First there was a happy vim-user, but after some vim plugins, 
" lots of tricks'n'commands: the vim-user begins to suffer from braindamage.
" Keyboardshortcuts are easier to remember, but in vim also its very
" easy to get a 'almost-all-my-mappings-are-taken' syndrome.
"
" SOLUTION
" ========
" switching of keyboardmappings..you can have endless mappings now.
" Call it keyboardshortcutsmappings or presets if you will.
"
" INSTALLATION 
" ============
" following instructions are focused on *NIX based, textmode vim-users, but
" might also work on other platforms with a bit of love:
"
" - put mappingmanager.vim into your plugins directory
" - add the contents of mappings.vim to your vimrc configuration file
" - [optional] multi-user / company installation which keeps things tidy:
"    - copy mappings.vim to your global vimconfig dir (example: /etc/vim)
"    - copy mappings.vim to your homedir's .vim dir (example: ~/.vim usually exist)
"    - copy mappings.vim to your projectdir dir, vim will automatically add projectspecific mappings 
"
" USAGE 
"======
" - use ,, to cycle thru mappings (remembering this shortcut is enough, rest is self-explanatory)
" - [optional] use ,. to view the current mapping
" - [optional] use ,/ to select a mapping
" - [optional] use ,m change output mode between 'dialog' or 'console'
" - [optional] use ,F1 select mapping #1
" - [optional] use ,F2 select mapping #2
" - ..and so on
"
"
" Author : Leon van Kammen (Coder Of Salvation/leon.vankammen.eu) 
" Author : Tim Gerritsen (Mannetje Development/www.mannetje.org) 
" License: This file is placed in the public domain.
" last modified : August 19 , 2002
" Comments welcome @ info /at\ leon.vankammen.eu
"                    info /at\ mannetje.org
" TODO: testing..
" {{{=ChangeLog================================================================
" | Sun Oct  2 18:52:19 CEST 2011 > rewrote the mappingcode from killer-vimrc
" |                                 to this plugin
" | Sun Oct  2 21:14:54 CEST 2011 > Changed default map_index to 1 instead of 0,
" |                                 Fixed unique temporary dialog log files
" | Mon Oct  3 12:09:09 CEST 2011 > Small code-pullup to function CycleMapping
" |                                 Small bugfix with cycling Code
" |                                 added bugfix ShowLineCurrentMapping()
" |                                 added ,<F1> .. ,<F12> shortcuts
" |                                 added ,m (toggle between mode) shortcuts
" |                                 added automatic loading of mappings.vim in projectdir
" |                                 added mm_show_mapping_as_text config var
" | Thu Oct  6 23:50:33 CEST 2011 > removed dialog vs console mode: less is more
" |                                 removed ,m shortcut
" |                                 disabled ShowLineCurrentMapping() less is more
" |                                 the application rewrote itself after live usage :)
" | Mon Oct 10 11:21:32 CEST 2011 > ,F-keys no do not popup menu if popup is hidden
" |                                 SelectMapping: partial code pull-up to PrintMapping
" ==========================================================================}}}
"
" Copyright 2011 Coder-of-Salvation-and-Mannetje. All rights reserved.
" 
" Redistribution and use in source and binary forms, with or without modification, are
" permitted provided that the following conditions are met:
" 
"    1. Redistributions of source code must retain the above copyright notice, this list of
"       conditions and the following disclaimer.
" 
"    2. Redistributions in binary form must reproduce the above copyright notice, this list
"       of conditions and the following disclaimer in the documentation and/or other materials
"       provided with the distribution.
" 
" THIS SOFTWARE IS PROVIDED BY <COPYRIGHT HOLDER> ''AS IS'' AND ANY EXPRESS OR IMPLIED
" WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
" FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> OR
" CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
" CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
" SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
" ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
" NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
" ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
" 
" The views and conclusions contained in the software and documentation are those of the
" authors and should not be interpreted as representing official policies, either expressed
" or implied, of Coder-of-Salvation-and-Mannetje.
" 
" }}}
"
" LET THE GAMES BEGIN!
" ==========================================================================
let g:mm_info        = ""           " string of info about current mapping
let g:mm_names       = ""           " string containing names of all mappings
let g:map_info       = []           
let g:map_index      = 1
let g:toggle         = 0            " is statusline expanded
let g:panelheight    = 40           " modify zenki, window height
let g:cmdheight      = &cmdheight   " remember cmdline height
let g:usedialog      = 0            " use of dialogs turned of (*EXPERIMENTAL SETTING*)
let g:navigationx    = 110          " start displaying navigationtext at this column a
let g:view           = "mapping"    " variable indicating if we are in 'mapping' or 'preset' view
let g:navigation     = []
let g:navigation     += ["  keyboard   navigation"]
let g:navigation     += ["  ================================"]
let g:navigation     += ["  ,m       = open/close panel     "]
let g:navigation     += ["  ,(F-key) = select certain preset"]
let g:navigation     += ["                                  "]
let g:navigation     += ["                                  "]
let g:navigation     += ["                                  "]
let g:navigation     += ["                                  "]
let g:navigation     += ["                                  "]
let g:navigation     += ["  zenki2001cn@163.com - 2012      "]
let g:navigation     += ["  ================================"]
let g:navigation     += ["  !do-daily-yoga-and-stay-healthy!"]


" add zenki, extra key mapping info
let g:mm_info_extra = ""
let g:mm_info_extra .= "\n*** Other mapping ***                                                                                         \n"
let g:mm_info_extra .= "标签操作:   \\te, \\tc, \\tn, \\tp                                                      Session:        \\sl(选择), \\sv(保存)  \n"
let g:mm_info_extra .= "Bin操作:    \\xx(十六进制), \\xb(二进制), \\xc(C格式), \\xr(恢复)                       QuickfixSigns:  \\qs(显示切换)    \n"
let g:mm_info_extra .= "Ctags:      <C-]>, <C-t>, <C-n>, <C-b>, <C-l>                                       Gtags,Utags:    <C-\\>c, <C-\\>s, <C-\\>u, <C-\\>d\n"
let g:mm_info_extra .= "Quit:       \\w(强制保存), \\qa(不保存退出)                                           Program:        <C-h>(帮助), --(Lint), \\a, \\A(头文件切换), ,cf(注释)\n"
let g:mm_info_extra .= "谷歌翻译:   \\t, \\tr, \\ta, \\tar, \\ts, \\tss, \\tf, <S-t>(可选中)                       URL:            \\f(翻译), \\g(浏览), \\s(搜索), <C-x>w(W3m切换) \n"
let g:mm_info_extra .= "Refactor:   \\rc(变量), \\rf(文件名), \\rr(恢复)        \n"
let g:mm_info_extra .= "Yate:       <C-y>(查找ctags关键字)                                                  Buffer:         ,bs(文本替换), ,yy(剪贴板显示), ys(剪贴板搜索)  \n"
let g:mm_info_extra .= "Search:     ,f(过滤显示), ,F(查找), ,G(跳转), ,d(关闭), ,/[A|B](V模式)(多项查找)    Jump:           ,,[key](字跳转), gL/gv(行跳转), <C-o>, <C-i>    \n"
let g:mm_info_extra .= "Gitv:       \\gv(显示), \\gt(Tab编辑), \\gb(Blame), <S-s>(list)                        Vimwiki:        \\wt(table), \\wg(links), \\wdi(dairy), \\ww(Wiki)\n"
let g:mm_info_extra .= "NeoCache:   <C-x><C-Tab>(Auto模式切换)                                              SnipeComplete:  <C-k>(Auto补全), <C-l>(Snip模式), <C-x><C-l>(Other) \n"
let g:mm_info_extra .= "W3m:        f(hint), s(syntax), c(cookie), =(url)                                   Diff:           dp(push), do(get), ]c(next), [c(prev), ]=(冲突) \n"
let g:mm_info_extra .= "Surround:   ,cs)](替换), ,ds)(删除), ysiw)(插入), yssb(行插入), vS}(V模式插入)      Highlight:      gd|[*]\h|:Hs[*](标记), ge|:Hc[*](清除)  \n"
let g:mm_info_extra .= "窗口布局:   \\tw, :sba(分割buffer), wo(调整窗口), ,w(最大宽度), <S-w>(选择窗口)      窗口操作:       \\qq, \\qa, qq, wv, ws, wj, wk, wh, wl, wJ, wK, wH, wL \n"
let g:mm_info_extra .= "Execute:    !, !!, <C-n>, <C-p>, <C-l>                                              HTML & XML:     <tag>, tag,,        \n"
let g:mm_info_extra .= "CommandT:   \\ct, \\cb, <S-t>                                                         CtrlP:          <C-p>, <C-z>, <C-o>, <C-b>, :25, :diffthis, :/key \n"
let g:mm_info_extra .= "CCTree:     <C-F7>, <C-F8>, zs, za, zr, <F7-=>, <F7-->, <F7-w>, <F7-l>, <F7-y>      FilePirate:     <C-x><C-f>, <F5>(refresh), <C-j>(down), <C-k>(up)\n"
let g:mm_info_extra .= "文本处理:   <C-x><C-n>(Narrow), <C-x><C-m>(多页同步显示), _/+(nextval)              QuickFixGrep:   \\g(匹配), \\r(恢复)            \n"
let g:mm_info_extra .= "文本对齐:   <Enter>[*][|,=](V模式), <A-k>(上移), <A-j>(下移)                        计算器:         cl(V模式), :Crunch, :ScalcVSplit, :Scalc     \n"
let g:mm_info_extra .= "VCS:        \\ca(add), \\cc(commit), \\cD(delete), \\cd(diff), \\cl(log), \\cn(blame), \\cs(status), \\cv(vimdiff), \\cg(gitlog), \\cf(gitlog_flip)    \n"
let g:mm_info_extra .= "Commander:  <Tab>(Goto), <F3>(查看), <F4>(编辑), <F5>(拷贝), <F6>(移动), <F7>(创建目录), <F8>(删除), <F10>(退出), INS(选择), +-(选择匹配), \\h(显示隐藏) \n"
let g:mm_info_extra .= "冲突检测:   ]=,(向下), [=(向上) ,ll(锁定), ,ln(next), ,lr(释放), ,li(info)  锁定模式: o(our), t(their), a(all), e(unlock), q(quit), v(view)\n"

" load the user mappings
if has("unix")
  " modify zenki, change default dir
  let g:usermapping_file = $HOME."/.vim/myconf/mappingsCommander.vim"
  let g:globalmapping_file = $HOME."/.vim/myconf/mappings.vim"
endif
if has("win32")
  let g:usermapping_file = $VIM."/vimfiles/mappings.vim"
  let g:globalmapping_file = "/etc/vim/.vim/mappings.vim" "???
endif

function! GenerateDialogMappingNames()
  if len(g:map_info) == 0
    call PleaseInstall()
    return
  endif
  let g:maps = len(g:map_info)/24
  let i    = 0
  let j    = 0
  let max  = g:maps*26
  let g:mm_names = ""
  while i < max
    if HasDialog() && g:usedialog
      let g:mm_names .= "\"".((i/26)+1)."\" \"".StrPad( g:map_info[ i ],20).g:map_info[ i+1 ]."\" "
    else
      if ((g:map_index-1)*26) == i 
        let line = StrPad( "-> ".g:map_info[ i ], 20)." <- ".g:map_info[ i+1 ]
      else
        let line = StrPad( "   ".g:map_info[ i ], 20)." <- ".g:map_info[ i+1 ]
      endif
      if j < len(g:navigation) && &columns > 140
        let line = StrPad( line, g:navigationx ).g:navigation[j]
        let j += 1
      endif
      let g:mm_names .= line."\n" 
    endif
    let i += 26
  endwhile
endfunction

function! GenerateDialogMappingInfo(ononeline)
  if len(g:map_info) == 0
    call PleaseInstall()
    return
  endif
  let i    = ((g:map_index-1) * 26)+2
  let j    = 0

  let max  = i + 24
  let g:mm_info = ""
  if !a:ononeline
    let g:mm_info = "\n".StrPad("*** ".g:map_info[ i-2 ]." *** ",21).g:map_info[ i-1 ]."\n\n"
  endif
  while i < max
    if len(g:map_info[i+1]) > 0
      let arrow = " <- "
    else
      let arrow = ""
    endif
    if !a:ononeline
      let line = StrPad( g:map_info[ i ], 20).arrow.g:map_info[ i+1 ]
      if j < len(g:navigation) && &columns > 140 " do not mess up screen on small windowsize
        let line = StrPad( line, g:navigationx ).g:navigation[j]
        let j += 1
      endif
      let line .= "\n" 
    else
      let line = StrPad( strpart( g:map_info[ i ], 0, 10 ), 10 )." | "
    endif
    let g:mm_info .= line
    let i += 2
  endwhile

  " add zenki, add extra info to show
  if !a:ononeline
    let g:mm_info .= g:mm_info_extra
  endif
endfunction

function! StrPad(s,amt)
    return a:s . repeat(' ',a:amt - len(a:s))
endfunction

function! SetStatus()
  if len( g:map_info ) 
    let &statusline="%F %m%r[%{&ff}][\%03.3b][\%02.2B][%04l,%04v][%p%%][ ".g:map_info[ (g:map_index-1) *26 ]." ]"
  endif
endfunction

function! ToggleCmdHeight(autoprint)
  if( g:toggle == 0 )
    call MMUpdate()
    let &cmdheight = g:panelheight " ugly, getting number of lines of total echo would be better
    let g:toggle = 1
    if a:autoprint
      if g:view == "mapping"
        call PrintMapping(0)
      else
        call PrintMapping(1)
      endif
    endif
  else
    let &cmdheight = g:cmdheight
    let g:toggle = 0
  endif
endfunction

function! PleaseInstall()
  echo "mappingmanager.vim: could not load /etc/vimrc/mappings.vim or ~/.vim/mappings.vim (read mappingmanager.vim)"
endfunction

function! PrintMapping(onlymappingnames)
  if len(g:map_info) == 0
    call PleaseInstall()
  else
    if( a:onlymappingnames )
      let g:view = "preset" 
    else
      let g:view = "mapping" 
    endif
    if !a:onlymappingnames
      call GenerateDialogMappingInfo(1)
      echo g:mm_info
      if g:toggle == 0 
        return 
      " just print one line
      endif
      " call SetStatus()    " del zenki, disable
      call GenerateDialogMappingInfo(0)
      echo g:mm_info 
      let g:view = "mapping"
    else
      if HasDialog() && g:usedialog
        "let s:cacheFile = "/tmp/dialog.tmp.".system("head -n 1 /dev/urandom|md5sum|sed -e 's/[^a-z0-9].*$//'|tr -d '\n'")
        let s:cacheFile = tempname()
        execute "!dialog --ascii-lines --title 'select vim mapping' --output-fd 2 --menu \"available mappings:\" 15 78 10 ".g:mm_names." 2>".s:cacheFile
        let g:map_index = system("cat ".s:cacheFile." && rm -f ".s:cacheFile)
      else
        if g:toggle == 0 
          call ToggleCmdHeight(0)
        endif
        " call SetStatus()      " del zenki, disable
        call LoadMappings()
        call GenerateDialogMappingNames()
        echo "\n*** preset ***\n\n" 
        echo g:mm_names
      endif
    endif
  endif
endfunction

function! LoadMappings()
  if( filereadable( g:globalmapping_file ) )
    execute "source ".g:globalmapping_file
  endif
  if( filereadable( g:usermapping_file ) )
    execute "source ".g:usermapping_file
  endif
  if filereadable("mappings.vim")
    execute 'source mappings.vim'
  endif
endfunction

function! ShowLineCurrentMapping()
  let mappingname  = StrPad( "[ ".g:map_info[ (g:map_index-1) * 26]."] ".g:map_info[ ((g:map_index-1) * 26) + 1 ]." ", 60) 
  execute "echo '".mappingname." [ navigation:  ,(F-key)=select ,.=view ,/= dialog ,,=next ]"."'"
endfunction

function! CycleMapping( index )
  call MMUpdate()
  if a:index == -1
    let g:map_index = (g:map_index - 1) % g:maps
  else  
    let g:map_index = (g:map_index + a:index) % (g:maps+1)
  endif
  if g:map_index == 0 " index starts at 1
    let g:map_index = 1
  endif
  call LoadMappings()
  " call SetStatus()        " del zenki, disable
  if g:toggle == 0
    call GenerateDialogMappingInfo(1)
    echo g:mm_info
    return 
  endif
  if g:view == "preset"
    call PrintMapping(1)
  else 
    call PrintMapping(0)
  endif
endfunction

function! MMUpdate()
  let g:maps = len(g:map_info)/24
endfunction

function! HasDialog()
  let dialog=system('which dialog')
  return (len(dialog) != 0)
endif

endfunction

function! SelectMapping( incr, silent, index )
  call MMUpdate()
  if  !exists("g:map_index")
    let g:map_index = 1
    let silent = 1
  endif
  if a:index == 0
    if a:silent
      call CycleMapping( a:incr )
      return
    endif
  else 
    call SetMapping(a:index)
  endif
endfunction

function! SetMapping(index)
  if a:index <= g:maps
    let g:map_index = a:index 
    " call SetStatus()      " del zenki, disable
    call LoadMappings()
    if g:toggle == 1
      if g:view == "mapping"
        call PrintMapping(0)
      else
        call PrintMapping(1)
      endif
    else
      call GenerateDialogMappingInfo(1)
      echo g:mm_info
    endif
  endif
endfunction

" delete zenki, disable these function
" nnoremap ,<Space> :call SelectMapping(+1,1,0)<cr>
" nnoremap ,. :call PrintMapping(0)<cr>
" nnoremap ,/ :call PrintMapping(1)<cr>
nnoremap <silent> ,<F1> :call SelectMapping(0,0,1)<cr>
nnoremap <silent> ,<F2> :call SelectMapping(0,0,2)<cr>
nnoremap <silent> ,<F3> :call SelectMapping(0,0,3)<cr>
nnoremap <silent> ,<F4> :call SelectMapping(0,0,4)<cr>
nnoremap <silent> ,<F5> :call SelectMapping(0,0,5)<cr>
nnoremap <silent> ,<F6> :call SelectMapping(0,0,6)<cr>
nnoremap <silent> ,<F7> :call SelectMapping(0,0,7)<cr>
nnoremap <silent> ,<F8> :call SelectMapping(0,0,8)<cr>
nnoremap <silent> ,<F10> :call SelectMapping(0,0,10)<cr>
nnoremap <silent> ,<F11> :call SelectMapping(0,0,11)<cr>
nnoremap <silent> ,<F12> :call SelectMapping(0,0,12)<cr>
nnoremap <silent> ,m :call ToggleCmdHeight(1)<cr>
call LoadMappings()
" call SetStatus()      " del zenki, disable
