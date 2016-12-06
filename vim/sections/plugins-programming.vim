" code checking
Plugin 'scrooloose/syntastic'
" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" function argument handling
Plugin 'vim-scripts/argtextobj.vim'

" function text object using f (dif, caf, ...)
Plugin 'kana/vim-textobj-function'
" functions for javascript
Plugin 'thinca/vim-textobj-function-javascript'

" Vims preview default
" set completeopt=preview,menuone
set completeopt=menuone
" put the preview window on the bottom
set splitbelow

" synthax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_js_checkers = ['jshint']


" Ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<F5>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"  " TODO

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"=====================================
" INITIALIZATION
"=====================================

autocmd vimenter * NERDTree

"=====================================
" KEY MAPPINGS
"=====================================

" open/close syntastic error list
nnoremap <leader>oe :lopen<cr>
nnoremap <leader>ce :lclose<cr>
