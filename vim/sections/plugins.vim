"====================================
" LIST OF PLUGINS
"====================================
"
" Vundle plugin manager
Plugin 'gmarik/vundle'

" color schemes
Plugin 'flazz/vim-colorschemes'
" onehalf color scheme
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" fancy status line
Plugin 'vim-airline/vim-airline'

" MOVEMENT
" file explorer
Plugin 'scrooloose/nerdtree'
" fuzzy file finder, mapped to CTRL-p
Plugin 'ctrlpvim/ctrlp.vim'
" amazing git wrapper for vim
Plugin 'tpope/vim-fugitive'
" better synthax highlighting
Plugin 'sheerun/vim-polyglot'
" auto close brackets, quotes, ...
Plugin 'jiangmiao/auto-pairs'
" enables repeating other supported plugins with the . command
Plugin 'tpope/vim-repeat'
" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'
" context-aware pasting
Plugin 'sickill/vim-pasta'
" support for multiple cursors
Plugin 'terryma/vim-multiple-cursors'
" keep a stack of yanks and scroll them with meta-p and meta-P
" TODO figure out how to enable this one. It looks cool.
" Plugin 'maxbrunsfeld/vim-yankstack'

" VIMDIFF
Plugin 'vim-scripts/CountJump'
Plugin 'vim-scripts/ingo-library'
" go to next/previous conflick using ]x and [x
Plugin 'vim-scripts/ConflictMotions'

" OPERATIONS ON TEXT OBJECTS
" change surrounding tags, parentheses, brackets, ... using cs'", ds' (ysiw" to add quotes around a word)
Plugin 'tpope/vim-surround'
" comment out sections of code using gc
Plugin 'tpope/vim-commentary'
" replace with register using gr (avoids overriding the register)
Plugin 'vim-scripts/ReplaceWithRegister'

" FILE FORMATS
" JSON
"Plugin 'elzr/vim-json'
" JSON5
Plugin 'GutenYe/json5.vim'
Plugin 'hjson/vim-hjson'

" TEXT OBJECTS
" plugin to create your own text objects
" Plugin 'kana/vim-textobj-user'
" comment, represented by c
" Plugin 'glts/vim-textobj-comment'

"====================================
" CONFIGURATION
"====================================

" status bar (on top)
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#left_sep = '>'
" let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#syntastic#enabled = 0
" let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
" let g:airline_section_b       (hunks, branch)
" let g:airline_section_c       (bufferline or filename)
" let g:airline_section_gutter  (readonly, csv)
" let g:airline_section_x       (tagbar, filetype, virtualenv)
" let g:airline_section_y       (fileencoding, fileformat)
" let g:airline_section_z       (percentage, line number, column number)
" let g:airline_section_error   (ycm_error_count, syntastic, eclim)
" let g:airline_section_warning (ycm_warning_count, whitespace)

" here is an example of how you could replace the branch indicator with
" the current working directory, followed by the filename.
" let g:airline_section_b = '%{getcwd()}'
" let g:airline_section_c = '%t'

" surround
let g:surround_no_insert_mappings = 1

" auto pairs
let g:AutoPairsCenterLine = 0

" let g:ctrlp_open_single_match = 1
let g:ctrlp_match_window = 'results:100'
let g:ctrlp_show_hidden = 1
let g:ctrlp_lazy_update = 1
let g:ctrlp_regexp = 1

" " expanding selection region
" vmap v <Plug>(expand_region_expand)
" vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc
