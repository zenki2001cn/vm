"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件类型 setting {
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufEnter * :syntax sync fromstart      "  ensure every file does syntax highlighting (full)
au BufNewFile,BufEnter * set cpoptions+=d "  NOTE: ctags find the tags file from the current path instead of the path of currect file

"cflow
au BufNewFile,BufRead *.cflow set ft=cflow

"conkyrc
au BufNewFile,BufRead *.conkyrc set filetype=conkyrc

"python
au BufNewFile,BufRead *.py set filetype=python

"html
au BufNewFile,BufRead *.html set filetype=xhtml

" markdown
au BufRead,BufNewFile *.md setlocal ft=markdown

"log
au BufRead,BufNewFile *.log setlocal ft=txt
au BufRead,BufNewFile *.txt setlocal ft=txt

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
au BufNewFile,BufRead *.jquery,*.as,*.js set ft=javascript syntax=jquery

" nsis
au BufNewFile,BufRead *.nsh setf nsis

" swig
au BufNewFile,BufRead *.i,*.swg setf swig 

" cs
au BufNewFile,BufRead *.tt setf cs 

" treat gitignore file as config file
au BufNewFile,BufRead *.gitignore setf cfg 

" txtfmt
au BufNewFile,BufRead *.txtfmt  setf txtfmt

"vimwiki
au BufNewFile,BufRead *.wiki    setf vimwiki

"logcat
au BufRead,BufNewFile *.logcat set filetype=logcat

" gprof
au BufRead,BufNewFile *.gprof set filetype=gprof

" syslog
au! BufRead,BufNewFile /var/log/syslog* set filetype=syslog 
au! BufRead,BufNewFile /var/log/syslog/* set filetype=syslog 
au! BufRead,BufNewFile /var/log/* set filetype=syslog 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件类型 setting end }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
