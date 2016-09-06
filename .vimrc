"====================================
" PLUGIN-MANAGER
"====================================
"
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
" Web development
Plugin 'mattn/emmet-vim'
" auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
" auto close brackets, quotes, ...
Plugin 'Raimondi/delimitMate'
" auto completion
Plugin 'Valloric/YouCompleteMe'

" Node.js plugin
Plugin 'moll/vim-node'

call vundle#end()
filetype plugin indent on

"====================================
" FUNCTIONS
"====================================

function! ToPrevLine()
    let l:lineN = line('.')
    let l:colN = col('.')

    if l:colN == 1 && l:lineN > 1
        return "\<up>\<end>"
    else
        return "\<left>"
    endif
endfunction

function! ToNextLine()
    let l:lineN = line('.')
    let l:colN = col('.')

    let l:line = getline('.')
    let l:nLines = line('$')

    if l:colN == strlen(l:line) + 1 && l:lineN < l:nLines
        return "\<down>\<home>"
    else
        return "\<right>"
    endif
endfunction

function! ToPrevLineNm()
    normal <left>
    "return "\<left>"
endfunction


function! ToNextLineNm()
    return "\<right>"
endfunction


"====================================
" CONFIGURATION
"====================================

set t_Co=256
set updatetime=500

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

" HTML
let g:user_emmet_mode='a'   " enable all function in all mode.
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.xml"

" line overflow
set nowrap
" line numbers
set number
" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" STATUS LINE
" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermbg=8 gui=undercurl guisp=Magenta
    au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=1 gui=bold,reverse 

    au VimEnter * hi StatusLine term=reverse ctermfg=0 ctermbg=1 gui=bold,reverse 
endif

" CURSOR

"=====================================
" STARTUP
"=====================================

highlight WordUnderCursor ctermbg=DarkGray guibg=green

autocmd CursorHoldI *.js exe printf('match WordUnderCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
autocmd InsertLeave *.js :match WordUnderCursor "as823ryDVBD3323s"
autocmd vimenter * NERDTree

"=====================================
" KEY MAPPINGS
"=====================================

" <shift>+<tab> to tab backwards
inoremap {<return> {<return>}<C-o>O

" tab forward/backward
inoremap <S-tab> <C-d>
vnoremap <tab> >
vnoremap <S-tab> <lt>

" go to next previous line when pressing left/right
inoremap <left> <c-r>=ToPrevLine()<return>
inoremap <right> <c-r>=ToNextLine()<return>

" yank from the cursor to the end of the line
nnoremap Y y$

" map F7, F8 to next, previous tab
map <F7> :tabp<return>
map <F8> :tabn<return>
