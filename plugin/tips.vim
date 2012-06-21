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
        begin
            content = Net::HTTP.get(URI.parse('http://vim-tips.org/tips/random'));
            VIM::command("echon '#{content}'")
        rescue => e
            VIM::command("echon 'Tips offline'")
        end
    end
end
EOF

function DisplayTip()
    ruby TIPS::tips()
endfunction

" 禁止进入时调用
" autocmd VimEnter * :call DisplayTip()

" command NextTip :call DisplayTip()
command Tips :call DisplayTip()
