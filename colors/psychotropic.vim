" Dark & colorful theme for neovim.
"
" URL:     github.com/klingeldev/psychotropic
" License: MIT (https://opensource.org/licenses/MIT)

if has('nvim') && !has('nvim-0.9')
    lua vim.api.nvim_echo({
        \ { "psychotropic requires Neovim 0.9 or later.\n", "WarningMsg" },
        \ { "Please use the psychotropic 'legacy' branch if you can't upgrade Neovim.\n", "Normal"} },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='psychotropic'

" Enable terminal true-color support.
set termguicolors

let g:psychotropicCursorColor = get(g:, 'moonflyCursorColor', v:false)
let g:psychotropicItalics = get(g:, 'moonflyItalics', v:true)
let g:psychotropicNormalFloat = get(g:, 'moonflyNormalFloat', v:false)
let g:psychotropicTerminalColors = get(g:, 'moonflyTerminalColors', v:true)
let g:psychotropicTransparent = get(g:, 'moonflyTransparent', v:false)
let g:psychotropicUndercurls = get(g:, 'moonflyUndercurls', v:true)
let g:psychotropicUnderlineMatchParen = get(g:, 'moonflyUnderlineMatchParen', v:false)
let g:psychotropicVirtualTextColor =  get(g:, 'moonflyVirtualTextColor', v:false)
let g:psychotropicWinSeparator = get(g:, 'moonflyWinSeparator', 1)

if has('nvim')
    lua require("psychotropic").style()
else
    call psychotropic#Style()
end

" psychotropic is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
