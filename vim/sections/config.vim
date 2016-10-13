"====================================
" ABBREVIATIONS
"====================================

abbr teh the
abbr hte the
abbr fitler filter

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

au FocusLost * :wa              " Set vim to save the file on focus out.

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
