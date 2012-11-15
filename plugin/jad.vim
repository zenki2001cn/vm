" File:         jad.vim
" Purpose:      Vim plugin for viewing decompiled class files using 'jad' decompiler.
" Ideas:        Allow for a default to be set in the vimrc
"               - map a keystroke to decompile and edit, or decompile and view in split window
" Date Created: 10-14-2002
" Last Modified:10-22-2002
" Version:      1.3

if exists("loaded_jad") || &cp || exists("#BufReadPre#*.class")
  finish
endif
let loaded_jad = 1

" add zenki, set global path for jad bin
if exists("g:jad_bin_path")
    let jad_bin = g:jad_bin_path
else
    let jad_bin = "jad"
endif

augroup class
  " Remove all jad autocommands
  au!
  " Enable editing of jaded files
  " set binary mode before reading the file
  " add your preferable flags after "jad" (for instance "jad -f -dead -ff -a")
  autocmd BufReadPre,FileReadPre	*.class  set bin
  autocmd BufReadPost,FileReadPost	*.class  call s:read(jad_bin)   " add zenki, use jad_bin
augroup END

" Function to check that executing "cmd [-f]" works.
" The result is cached in s:have_"cmd" for speed.
fun s:check(cmd)
  let name = substitute(a:cmd, '\(\S*\).*', '\1', '')
  let short_name = split(a:cmd, "/")[-1]    " modify zenki, use short_name for s:have_ var
  if !exists("s:have_" . short_name)
    let e = executable(name)
    if e < 0
      let r = system(name . " --version")
      let e = (r !~ "not found" && r != "")
    endif
    exe "let s:have_" . short_name . "=" . e
  endif
  exe "return s:have_" . short_name
endfun

" After reading decompiled file: Decompiled text in buffer with "cmd"
fun s:read(cmd)
  " don't do anything if the cmd is not supported
  if !s:check(a:cmd)
    return
  endif
  " make 'patchmode' empty, we don't want a copy of the written file
  let pm_save = &pm
  set pm      =
  " set 'modifiable'
  set ma
  " when filtering the whole buffer, it will become empty
  let empty   = line("'[") == 1 && line("']") == line("$")
  let jadfile = expand("<afile>:r") . ".jad"
  let orig    = expand("<afile>")
  " now we have no binary file, so set 'nobinary'
  set nobin
  "Split and show code in a new window
  g/.*/d
  execute "silent r !" a:cmd . " -p " . orig
  1
  " set file name, type and file syntax to java
  execute ":file " . jadfile
  set ft      =java
  set syntax  =java
  " recover global variables
  let &pm     = pm_save
endfun
