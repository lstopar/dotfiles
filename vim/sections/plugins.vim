"====================================
" LIST OF PLUGINS
"====================================
"
" Vundle plugin manager
Plugin 'gmarik/vundle'

" color schemes
Plugin 'flazz/vim-colorschemes'
" fancy status line
Plugin 'vim-airline/vim-airline'
" file explorer
Plugin 'scrooloose/nerdtree'
" fuzzy file finder, mapped to CTRL-p
Plugin 'ctrlpvim/ctrlp.vim'
" better synthax highlighting
Plugin 'sheerun/vim-polyglot'
" auto close brackets, quotes, ...
Plugin 'jiangmiao/auto-pairs'
" expanding selected regions
Plugin 'terryma/vim-expand-region'
" comment out sections of code
Plugin 'tpope/vim-commentary'
" amazing git wrapper for vim
Plugin 'tpope/vim-fugitive'
" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'
" context-aware pasting
Plugin 'sickill/vim-pasta'
" change surrounding tags, parentheses, brackets, ...
Plugin 'tpope/vim-surround'

" TESTING
Plugin 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'terryma/vim-multiple-cursors'

"====================================
" CONFIGURATION
"====================================

" surround
let g:surround_no_insert_mappings = 1

" expanding selection region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc

