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
" fuzzy file finder, mapped to CTRL-p
Plugin 'ctrlpvim/ctrlp.vim'
" JavaScript stuff
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
" better synthax highlighting
Plugin 'sheerun/vim-polyglot'
" JSON
Plugin 'elzr/vim-json'
" Web development
Plugin 'mattn/emmet-vim'
" auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color', { 'for': ['css','stylus','scss']  } " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax', { 'for': 'css'  } " CSS3 syntax support
" auto close brackets, quotes, ...
Plugin 'jiangmiao/auto-pairs'
" auto completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" code checking
Plugin 'scrooloose/syntastic'

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
" amazing git wrapper for vim
Plugin 'tpope/vim-fugitive'

" improve paragraph detection
Plugin 'justinmk/vim-ipmotion'
Plugin 'sickill/vim-pasta' " context-aware pasting

" function argument handling
Plugin 'vim-scripts/argtextobj.vim'
" change surrounding tags, parentheses, brackets, ...
Plugin 'tpope/vim-surround'
" jump to matching tags
Plugin 'tmhedberg/matchit'

" LaTeX plugin
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

" eclipse-like task list
"Plugin 'vim-scripts/TaskList.vim'

" TESTING
Plugin 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plugin 'benmills/vimux' " tmux integration for vim
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on

"====================================
" ABBREVIATIONS
"====================================

abbr teh the
abbr hte the
abbr fitler filter

"====================================
" FUNCTIONS
"====================================

" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

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

" read .vimrc in the current directory
set exrc

" UTF-8
set encoding=utf-8
set autoread    " auto detect when a file is changed

set ttyfast                 " faster redrawing"
set nolazyredraw            " don't redraw while executing macros"

" map the leader
let mapleader = ","

" word under cursor highlighting responsiveness
set updatetime=500

" set 256 color terminal
if has('unix')
    set t_Co=256
endif

" color scheme
colorscheme onedark

" enable syntax highlighting
syntax on

" line overflow
set nowrap
" line numbers
set number
" highlight the current line
set cursorline
set scrolloff=3             " lines of text around cursor"
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
set pastetoggle=<F2>    " toggle pasting with/without indents


" CURSOR

"====================================
" PLUGIN CONFIGURATION
"====================================

" conceal
set cole=0
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "<"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

" airline options
" let g:airline_powerline_fonts=1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline_theme='onedark'
" let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
" let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)f
" let g:airline#extensions#tabline#show_buffers = 1 " do not show open buffers in tabline
" let g:airline#extensions#tabline#show_splits = 0"

" JSON
let g:vim_json_syntax_conceal = 0

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

" synthax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_js_checkers = ['jshint']

" expanding selection region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" commenting sections of code using CTRL+/
vmap <C-_> gc
"nnoremap <C-_> gc

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

" auto resize panes on resize
"autocmd VimResized * exe 'normal! \<c-w>='
" save all files on focus lost
autocmd FocusLost * silent! wa

autocmd vimenter * NERDTree

" TODO make entering insert mode go to correct indentation (cc)

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

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" yank from the cursor to the end of the line
nnoremap Y y$
" Search mappings: center the line where the match is found
nnoremap n nzzzv
nnoremap N Nzzzv
" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

" ignore annoying Ex mode
nnoremap q: :q

" Better split switching
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" enable . in visual mode
vnoremap . :normal .<cr>


" map F7, F8 to next, previous tab
map <F7> :tabp<return>
map <F8> :tabn<return>

"=====================================
" CUSTOM COMMANDS
"=====================================

" search for word under the cursor
nnoremap <leader>/ "fyiw /<c-r>f<cr>"
" remove trailing white spaces
nnoremap <leader>fs :%s/\s\+$//e<cr>
" remove mixed indentation
nnoremap <leader>ft gg=G''
