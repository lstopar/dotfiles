set nocompatible
"====================================
" PLUGIN-MANAGER
"====================================
"
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Vundle plugin manager
Plugin 'gmarik/vundle'

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
Plugin 'jiangmiao/auto-pairs'
" auto completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" debugging C++ (TODO still working on it)
Plugin 'vim-scripts/Conque-GDB'
" debugging Node.js
Plugin 'sidorares/node-vim-debugger'

" Node.js plugin
Plugin 'moll/vim-node'

" expanding selected regions
Plugin 'terryma/vim-expand-region'

" comment out sections of code
Plugin 'tpope/vim-commentary'

" fancy status line
Plugin 'vim-airline/vim-airline'
" show the current Git branch in the status bar
Plugin 'tpope/vim-fugitive'

" NEW PLUGINS, still testing (got from eclipse)
" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'

" function argument handling
Plugin 'vim-scripts/argtextobj.vim'
" change surrounding tags, parentheses, brackets, ...
Plugin 'tpope/vim-surround'
" jump to matching tags
Plugin 'tmhedberg/matchit'

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

"====================================
" CONFIGURATION
"====================================

" UTF-8
set encoding=utf-8

" word under cursor highlighting responsiveness
set updatetime=500

"set term=xterm
"let t_Co=256

" set 256 color terminal
if has('unix')
    set t_Co=256
endif

" color scheme
colorscheme gotham256
"colorscheme gotham
"colorscheme grb256

" enable syntax highlighting
syntax on

" line overflow
set nowrap
" line numbers
set number
" highlight the current line
set cursorline
" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set incsearch                   " Shows the match while typing"
set hlsearch                    " Highlight found searches"
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

" make backspace work like in other editors while in insert mode
set backspace=indent,eol,start

au FocusLost * :wa              " Set vim to save the file on focus out."

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a

    " fix mouse clicks past column 220
    if has('mouse_sgr')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

" STATUS LINE
" first, enable status line always
set laststatus=2

" CLIPBOARD
" copy into system clipboard whenever text is yanked
set clipboard=unnamedplus

" CURSOR

"====================================
" PLUGIN CONFIGURATION
"====================================

" conceal
set cole=0
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
" let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_return         = "<"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"
"let g:javascript_conceal_arrow_function = ">"


" HTML
let g:user_emmet_mode='a'   " enable all function in all mode.
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.xml"

" YouCompleteMe
let g:ycm_auto_trigger = 0                                  " only trigger autocomplete using <ctrl-space> (no automatic triggering)"
let g:ycm_add_preview_to_completeopt = 0                    " use the preview window for additional info"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1      " auto close the preview window after completion has been accepted"

" Vims preview default
" set completeopt=preview,menuone
set completeopt=menuone

" expanding selection region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc

" Vim airline
"let g:airline_section_b = '%{strftime("%c")}'

"=====================================
" STARTUP
"=====================================

highlight WordUnderCursor ctermbg=DarkGray guibg=green

autocmd CursorHoldI *.js exe printf('match WordUnderCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
autocmd CursorHold *.js exe printf('match WordUnderCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
autocmd InsertLeave *.js :match WordUnderCursor "as823ryDVBD3323s"
autocmd InsertLeave *.js :match WordUnderCursor "as823ryDVBD3323s"
autocmd vimenter * NERDTree

"=====================================
" KEY MAPPINGS
"=====================================

" tab forward/backward
nnoremap <S-Tab> <<
nnoremap <tab> >>
"inoremap <S-Tab> <C-d>
vnoremap <tab> >
vnoremap <S-tab> <lt>

" go to next previous line when pressing left/right
inoremap <left> <c-r>=ToPrevLine()<return>
inoremap <right> <c-r>=ToNextLine()<return>

inoremap <C-e> <esc>A
inoremap <C-a> <esc>I

"inoremap <esc> <esc>l

" yank from the cursor to the end of the line
nnoremap Y y$
" Search mappings: center the line where the match is found
nnoremap n nzzzv
nnoremap N Nzzzv

nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

" ignore annoying Ex mode
nnoremap q: :q

" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" map F7, F8 to next, previous tab
map <F7> :tabp<return>
map <F8> :tabn<return>
