"====================================
" LIST OF PLUGINS
"====================================
"
" Vundle plugin manager
Plugin 'gmarik/vundle'

" color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'whatyouhide/vim-gotham'
" file explorer
Plugin 'scrooloose/nerdtree'
" fuzzy file finder, mapped to CTRL-p
Plugin 'ctrlpvim/ctrlp.vim'
" better synthax highlighting
Plugin 'sheerun/vim-polyglot'
" auto close brackets, quotes, ...
Plugin 'jiangmiao/auto-pairs'
" auto completion
Plugin 'Valloric/YouCompleteMe'
" generates compiler flags for the project
" Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" code checking
Plugin 'scrooloose/syntastic'

" expanding selected regions
Plugin 'terryma/vim-expand-region'

" comment out sections of code
Plugin 'tpope/vim-commentary'

" fancy status line
Plugin 'vim-airline/vim-airline'
" amazing git wrapper for vim
Plugin 'tpope/vim-fugitive'

" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'
Plugin 'sickill/vim-pasta' " context-aware pasting

" function argument handling
Plugin 'vim-scripts/argtextobj.vim'
" change surrounding tags, parentheses, brackets, ...
Plugin 'tpope/vim-surround'

" TESTING
Plugin 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'terryma/vim-multiple-cursors'

"====================================
" CONFIGURATION
"====================================

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

" surround
let g:surround_no_insert_mappings = 1

" expanding selection region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc

