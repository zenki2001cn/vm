if exists('loaded_exvimwiki_auto') || &cp
    finish
endif
let loaded_exvimwiki_auto=1


function exvimwiki#SaveAndConvertVimwiki( save_all ) " <<<
    " first check and create vimwiki file if needed.
    " call exUtility#CreateVimwikiFiles ()

    " parsing wiki to html
    if a:save_all == 1
        silent exec 'wa' 
        echo 'converting wikies to html...' 
        exec 'VimwikiAll2HTML'
    else
        silent exec 'w'
        echo "converting current buffer to html...\r"
        exec 'Vimwiki2HTML'
        echon "Done!\r"
    endif

    " copy syntax highlighter js files
    " if exists ( 'g:exES_wikiHomeHtml' )
        " let dest_path = fnamemodify( simplify(g:exES_wikiHomeHtml . '/syntax_highlighter'), ':p' ) 
        " " if we don't have ./html/syntax_highlighter, create it, and copy files to it
        " if finddir ( dest_path ) == ''
            " silent call mkdir( dest_path )
            " silent call exUtility#CopySyntaxHighlighterFiles ( dest_path )
        " endif
    " endif
endfunction " >>>

finish
