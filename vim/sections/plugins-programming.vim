" auto completion
Plugin 'Valloric/YouCompleteMe'
" generates compiler flags for the project
" Plugin 'rdnetto/YCM-Generator'
" code checking
Plugin 'scrooloose/syntastic'
" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" function argument handling
Plugin 'vim-scripts/argtextobj.vim'

" YouCompleteMe
let g:ycm_disable_startup_warning = 1
let g:ycm_auto_trigger = 0                                  " only trigger autocomplete using <ctrl-space> (no automatic triggering)"
let g:ycm_add_preview_to_completeopt = 0                    " use the preview window for additional info"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1      " auto close the preview window after completion has been accepted"
" Vims preview default
" set completeopt=preview,menuone
set completeopt=menuone

" synthax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
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
