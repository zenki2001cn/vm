" ============================================================================
" File: tips.vim
" Modify: Zenki (Zenki.J.Zha), zenki2001cn@163.com
" Description: 
" Last Modified: 六月 12, 2012
" ============================================================================

ruby << EOF
require 'net/http'
require 'uri'

module TIPS
    def self.tips()
        content = Net::HTTP.get(URI.parse('http://vim-tips.org/tips/random'));
        print "Tip: #{content}"
    end
end
EOF

function DisplayTip()
    try
        ruby TIPS::tips()
    catch
        echo 'Network is offline!'
    endtry
endfunction

" 禁止进入时调用
" autocmd VimEnter * :call DisplayTip()

" command NextTip :call DisplayTip()
command Tips :call DisplayTip()
