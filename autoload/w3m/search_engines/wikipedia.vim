" File: autoload/w3m/search_engines/wikipedia.vim
" Last Modified: 2012.03.25
" Version: 1.0.0
" Author: yuratomo (twitter @yusetomo)

" modify zenki, change default language to chinese
let s:engine = w3m#search_engine#Init('wikipedia', 'http://zh.wikipedia.org/wiki/%s')

call w3m#search_engine#Add(s:engine)
