ChangLog
========

## TODO

### 20 v1.10.8 final

Update: 2012-09-10 17:25:14

* 10.1 更新gitv                                             ---> gitv (from github)
* 10.2 更新tagbar                                           ---> tagbar (from github)

### 19 v1.10.8 beta2

Update: 2012-09-10 11:35:11

* 10.1 更新pymode插件                                       ---> pymode v0.6.9
* 10.2 修改ctags参数（vimrc、autotag.vim）
* 10.3 添加配色文件harlequin.vim

### 18 v1.10.8 beta

Update: 2012-09-07 17:26:34

* 10.1 添加pymode插件（集成python开发环境）                 ---> pymode v0.6.8
* 10.2 更新neocomplcache插件                                ---> neocomplcache v7.1
* 10.3 修改ctags参数（vimrc、autotag.vim）
* 10.4 移除多处vim7.3引起的警告信息
* 10.4 更新ZoomWin插件（缩放窗口）                          ---> ZoomWin v25b

### 17 v1.10.7 final

Update: 2012-09-07 11:39:58

* 10.1 NERDTree添加打开VimExplorer插件入口（<c-g>）
* 10.2 添加indexer插件（自动tags管理，需要dfrank和vimprj）  ---> indexer v4.15 
* 10.3 添加dfrank插件（工具库）                             ---> dfrank v1.02
* 10.4 添加vimprj插件（工具库）                             ---> dfrank v1.08
* 10.5 NERDTree添加indexer插件（快捷加入project到indexer）
* 10.6 NERDTree添加indexer清除缓存功能
* 10.7 移除不必要的.svn目录
* 10.8 添加ConflictMotions插件（冲突文件内容跳转，需要CountJump） ---> ConflictMotions v1.10.003
* 10.9 添加CountJump插件（工具库）                          ---> CountJump v1.70.013
* 10.10 添加undotree（查看撤销历史）                        ---> undotree v4.1
* 10.11 添加try-catch解决signature插件在vim7.3下的bug
* 10.12 修改若干snippet文件

### 16. v1.10.6 final

Update: 2012-08-30 16:25:42

* 10.1 修改VimExplorer:

> * 1 修整按照文件大小排序，无法显示大于2GB文件的BUG
> * 2 添加显示文件总数、磁盘剩余空间大小信息

* 10.2 修改帮助文档
* 10.3 更新signature                            ---> signature v1.34 new
* 10.4 添加ZoomWin插件（缩放窗口）              ---> ZoomWin v24
* 10.5 修改vimrc（定义ww、WW、wc、wv、ws、wj、wk、wh、wl、wJ、wK、wH、wL快捷键）

### 15. v1.10.5

Update: 2012-08-27 10:50:56

* 10.1 更新tlib                                 ---> tlib v0.45
* 10.2 更新viki插件                             ---> viki v4.02
* 10.3 更新signature插件                        ---> signature v1.34
* 10.4 修改VimExplorer:

> * 1 添加文件列表信息彩色显示功能
> * 2 添加文件压缩功能，支持tar，tgz，bz2
> * 3 添加文件解压功能，支持tar，tgz，bz2，rar，zip，7z（需要7z支持）

* 10.5 NERDTree添加markdown转换至html的功能菜单

### 14. v1.10.4

Update: 2012-08-24 20:38:59

* 10.1 删除FindInNERDTree插件                   ---> NERDTree已集成
* 10.2 修改fs_menu插件，将文件操作合并一个子菜单
* 10.3 修改vimExplorer：

> * 1 显示自定义的帮助信息
> * 2 添加删除'收藏历史'和'浏览历史'功能
> * 3 添加文件按照大小排序功能

* 10.4 README使用markdown语法

### 13. v1.10.3

Update: 2012-08-20 08:59:33

* 10.1 更新locator插件                        ---> locator v1.2
* 10.2 添加VimExplorer插件（文件浏览）        ---> VimExplorer v0.99
* 10.3 更新renamer插件                        ---> renamer v1.4
* 10.4 删除c-support插件
* 10.5 更新Recover插件                        ---> Recover v0.15
* 10.6 更新SuperTab插件                       ---> SuperTab v2.0
* 10.7 修改tab页管理的快捷键（vimrc）
* 10.8 为NERD_tree_flist.vim插件添加显示hints列表选项
* 10.9 添加从NERDTree进入vimExplorer的入口
* 10.10 修正NERD_tree_global_vim中运行gtags异常的Bug
* 10.11 调整vimrc中的多项映射

### 12. v1.10.2

Update: 2012-08-10 16:42:28

* 10.1 更新signature插件                      ---> signature v1.32
* 10.2 删除nextfile插件
* 10.3 更新SnippetComplete                    ---> SnippetComplete v2.01
* 10.4 添加locator插件(显示当前光标所在函数)  ---> locator v1.01
* 10.5 修改vimrc（SnippetComplete按键映射）
* 10.6 修改tags目录，并在vimrc中打开tags设置
* 10.7 修改.gitignore文件
* 10.8 将NERDTree插件移动到nerdtree_plugin目录下，NERD_commenter插件不能移动
* 10.9 为flist和global添加子菜单，更新global功能

### 11. v1.10.1

Update: 2012-07-30 08:49:14

* 10.1 更新signature插件                      ---> signature v1.32
* 10.2 修改autotag插件                        ---> 修改映射ctags命令行参数
* 10.3 添加gtags工具至toolsuit目录            ---> gtags v6.2.4

### 10. v1.10 final

Update: 2012-07-23 09:37:40

* 10.1 更新yate插件                           ---> yate v1.4.0
* 10.2 修改NERDTree插件的菜单快捷键为“M”，避免和signature插件冲突  ---> NERDTree v4.2.0
* 10.3 更新vimwiki插件                        ---> vimwiki v2.0.1.stu
* 10.4 更新signature插件                      ---> signature v1.3

### 10. v1.10 alpha

* 10.1 更新yate插件                           ---> yate v1.3.0
* 10.2 更新tagbar                             ---> tagbar v2.4.1
* 10.3 修改vimrc配置

### 9. v1.09 final

Update: 2012-07-18 08:33:25

* 9.1 添加一些配色方案
* 9.2 添加toggle_width插件（NERDTree插件）    ---> toggle_width v1.0
* 9.3 添加yate插件（在tags文件中搜索）        ---> yate v1.2.5

### 9. v1.09 alpha

Update: 2012-07-13 12:47:28

* 9.1 修改molokai配色方案
* 9.2 修改template模板
* 9.3 删除markHL插件
* 9.4 添加signature插件（标记管理）           ---> signature v1.2
* 9.5 修改vimrc配置

### 8. v1.08

Update: 2012-07-02 09:01:30

* 8.1 添加xterm-color-table插件（显示颜色表） ---> xterm-color-table v1.6
* 8.2 修改sessionman.vim，将缓存目录设置为~/.vim_sessions     ---> 修改sessionman.vim
* 8.3 修改MRU插件的配置，将缓存目录设置为~/.vim_mru_files     ---> 修改vimrc
* 8.4 添加recover插件（打开swp文件时比较）    ---> recover v0.14
* 8.5 更新vim-ref                             ---> vim-ref v0.4.3
* 8.6 移除diff模式的快捷键映射                ---> 修改vimrc
* 8.7 修正一些配色方案的文件格式为unix
* 8.8 添加gprof.vim插件（浏览gprof）          ---> ft_gprof v0.4
* 8.9 更新gui2term.py（转换配色文件）         ---> gui2term.py v3.03 (需要Python 3支持)
* 8.10 修改vimwiki-template（增加toc字体大小）
* 8.11 修改PreciseJump的色彩配置
* 8.12 修改vimrc的若干配置
* 8.13 移除ftplugin/python_fold_compact.vim
* 8.14 添加xmledit（编辑html、css、xml）      ---> xmledit v1.9.1
* 8.15 更新neocomplcache                      ---> neocomplcache v7.0
* 8.16 修改配色molokai

### 7. v1.07

Update: 2012-06-26 15:39:45

* 7.1 更新vimrc
* 7.2 添加viewdoc插件（查看帮助文档）     ---> viewdoc v1.3
* 7.3 移除filtering2，还原旧版本          ---> filtering v1.07
* 7.4 添加Powerline插件（status栏）       ---> Powerline 2012-02-29
* 7.5 添加PreciseJump（任意位置跳转）     ---> PreciseJump v0.49
* 7.6 添加一些配色                        ---> werks
* 7.7 移除backup目录
* 7.8 更新c.vim                           ---> c.vim v5.19
* 7.9 添加html.vim(显示html的TAG)         ---> html.vim v1.2

### 6. v1.06

Update: 2012-06-20 09:34:34

* 6.1 更新Drawit插件                      ---> DrawItPlugin
* 6.2 添加autoclose插件                   ---> autoclose v1.4
* 6.3 添加几种配色方案                    ---> editplus
* 6.4 添加gitv插件(一个gitk的clone版本)   ---> gitv v1.1
* 6.4.1 gitv的依赖插件fugitive            ---> fugitive v1.2
* 6.5 添加ConqueTerm插件(在vim中执行程序) ---> ConqueTerm v2.2
* 6.6 添加gtags插件(使用global工具)       ---> gtags v0.6
* 6.7 添加zenki_plugin_doc说明
* 6.8 添加NERD_tree_global_vim插件(更新GTAGS) 

### 5. v1.05

Update: 2012-06-17 20:48:21

* 5.1 添加一些配色方案                    ---> oh_la_la
* 5.2 更新tagbar插件                      ---> tagbar v2.4
* 5.3 更新filtering插件                   ---> filtering2.0 beta1

### 4. v1.04

Update: 2012-06-11 15:19:58

* 4.1 添加一些配色方案
* 4.2 添加Python的方法折叠功能的插件ftplugin/python_fold_compact.vim
* 4.3 更新vimwiki至v2.0
* 4.4 更新相关的.vimrc
* 4.5 添加buffers_search_and_replace插件，用来快速查找并替换关键字
* 4.6 添加plugin/tps.vim插件，可在线显示vim使用小贴士

### 3. v1.03

Update: 2012-06-08 17:41:38

* 3.1 添加plugin/autotag.vim

### 2. v1.02

Update: 2012-05-31 13:43:44

* 2.1 更新viki插件
* 2.2 更新bufexplore插件
* 2.3 新加markHL插件，并自定义
* 2.4 更新.vimrc，添加diff模式的]c、[c映射
* 2.5 更新syntax/python3.0.vim、syntax/python.vim

### 1. v1.01

Update: 2012-06-08 17:42:31

* 1.1 更新viki插件
* 1.2 更新tlib插件
* 1.3 更新bufexplore插件
