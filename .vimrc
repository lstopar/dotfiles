"====================================
" PLUGIN-MANAGER
"====================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'whatyouhide/vim-gotham'
" file explorer
Plugin 'scrooloose/nerdtree'
" JavaScript stuff
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
" auto close brackets, quotes, ...
Plugin 'Raimondi/delimitMate'
" auto completion
Plugin 'Valloric/YouCompleteMe'

" Node.js plugin
Plugin 'moll/vim-node'

call vundle#end()
filetype plugin indent on


"====================================
" CONFIGURATION
"====================================

set t_Co=256

" color scheme
colorscheme gotham256
"colorscheme grb256

" conceal
set cole=1
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

" line overflow
set nowrap
" line numbers
set number
" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

"=====================================
" STARTUP
"=====================================
autocmd vimenter * NERDTree

"=====================================
" KEY MAPPINGS
"=====================================

"inoremap {<return> {<return>}<C-o>O<tab>
inoremap {<return> {<return>}<C-o>O
