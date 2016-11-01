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
" amazing git wrapper for vim
Plugin 'tpope/vim-fugitive'
" better synthax highlighting
Plugin 'sheerun/vim-polyglot'
" auto close brackets, quotes, ...
Plugin 'jiangmiao/auto-pairs'
" expanding selected regions
Plugin 'terryma/vim-expand-region'
" enables repeating other supported plugins with the . command
Plugin 'tpope/vim-repeat'
" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'
" context-aware pasting
Plugin 'sickill/vim-pasta'

" OPERATIONS ON TEXT OBJECTS
" comment out sections of code using gc
Plugin 'tpope/vim-commentary'
" replace with register using gr (avoids overriding the register)
Plugin 'vim-scripts/ReplaceWithRegister'
" change surrounding tags, parentheses, brackets, ... using cs'", ds' (ysiw"
" to add quotes around a word)
Plugin 'tpope/vim-surround'
" titlecase text objects using gt
Plugin 'christoomey/vim-titlecase'
" sort lines, comma separated words (args), ... using gs (gsip, gs10j, gsi(  )
Plugin 'christoomey/vim-sort-motion'
" copy text objects into system clipboard using cp
Plugin 'christoomey/vim-system-copy'

" TEXT OBJECTS
" plugin to create your own text objects
Plugin 'kana/vim-textobj-user'
" inner-line text object, inner line represented by _ (d_, c_)
Plugin 'bruno-/vim-line'
" lines with same indent, represented by i
Plugin 'michaeljsmith/vim-indent-object'
" comment, represented by c
Plugin 'glts/vim-textobj-comment'

" TESTING
Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'terryma/vim-multiple-cursors'

"====================================
" CONFIGURATION
"====================================

" surround
let g:surround_no_insert_mappings = 1

" auto pairs
let g:AutoPairsCenterLine = 0

" expanding selection region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc

