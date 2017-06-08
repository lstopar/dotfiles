"====================================
" ABBREVIATIONS
"====================================

" the
abbr teh the
abbr hte the
abbr Teh The
abbr Hte The

" new
abbr nwe new
abbr enw new

" and
abbr adn and

" return
abbr reutrn return
abbr retunr return
abbr reutnr return

" else
abbr esle else

" with
abbr wtih with

" function
abbr fucntion function

" filter
abbr fitler filter

"====================================
" CONFIGURATION
"====================================

" read .vimrc in the current directory
set exrc
" ignore the tags file when searching for various stuff
set wildignore+=tags
" common directories
set wildignore+=**/.git/**
set wildignore+=**/build/**
set wildignore+=**/node_modules/**
set wildignore+=**/nodedoc/**
" common file types
set wildignore+=**/*.bin
set wildignore+=**/*.log
set wildignore+=**/*.out
set wildignore+=**/*.png
set wildignore+=**/*.jpg
set wildignore+=**/*.md
" ignore minified files in search
set wildignore+=**/*.min.js

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
" show line numbers relative to the current line
set relativenumber
" highlight the current line
set cursorline
" lines of text around cursor"
set scrolloff=3
" the number of columns to scroll sideways when the cursor leaves the screen
set sidescroll=3
" columns around the cursor
set sidescrolloff=5
" tab settings
set tabstop=4
set shiftwidth=4
set expandtab

set incsearch                   " Shows the match while typing"
set hlsearch                    " Highlight found searches"
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
" turn on spell checking
"set spell

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
" toggle pasting with/without indents
set pastetoggle=<F2>
" allow selecting rectangles in text using ctrl-v
set virtualedit=block
" allow vim to increase/decrease alphabet characters
set nrformats+=alpha

" set the backup, swap and undo files directories
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

highlight WordUnderCursor ctermbg=DarkGray guibg=green

autocmd CursorHoldI *.js,*.py,*.cpp,*.h,*.hpp,*.java exe printf('match WordUnderCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
autocmd CursorHold *.js,*.py,*.cpp,*.h,*.hpp,*.java exe printf('match WordUnderCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
autocmd InsertLeave *.js,*.py,*.cpp,*.h,*.hpp,*.java :match WordUnderCursor "as823ryDVBD3323s"
autocmd InsertLeave *.js,*.py,*.cpp,*.h,*.hpp,*.java :match WordUnderCursor "as823ryDVBD3323s"

" auto resize panes on resize
"autocmd VimResized * exe 'normal! \<c-w>='
" save all files on focus lost
autocmd FocusLost * silent! wa

"=====================================
" GUI OPTIONS
"=====================================

if has('gui')
    " set the font
    set guifont=Consolas\ 9,Inconsolata\ 10
    " remove the menu
    set guioptions-=m
    " remove the toolbar
    set guioptions-=T
    " right-hand scroll bar not always present
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
endif

"=====================================
" HIGHLIGHT THE CURRENT PANE
"=====================================

augroup BgHighlight
    autocmd!
    " don't highlight the current line on inactive panes
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

"=====================================
" KEY MAPPINGS
"=====================================


" go to next previous line when pressing left/right
inoremap <left> <c-r>=ToPrevLine()<return>
inoremap <right> <c-r>=ToNextLine()<return>
" jump to end/beginning of line when editing
inoremap <C-e> <end>
inoremap <C-a> <home>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" yank from the cursor to the end of the line (to match the behaviour of D and
" C)
nnoremap Y y$
" Search mappings: center the line where the match is found
nnoremap n nzzzv
nnoremap N Nzzzv
" clear highlighted search
" noremap <space> :set hlsearch! hlsearch?<cr>

" nmap <S-CR> O<Esc>j
" nmap <CR> o<Esc>

" ignore annoying Ex mode
nnoremap q: :q
" save all instead of save
" nnoremap <silent> :w :wa

" map CTRL-s to write all buffers
nnoremap <silent> <C-s> :wa<cr>
" when used in insert mode, go to normal mode and save all
inoremap <silent> <C-s> <Esc>:wa<cr>

" Better split switching
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" enable . in visual mode
vnoremap . :normal .<cr>
" don't lose selection when shifting sideways
xnoremap <  <gv
xnoremap >  >gv

" map F7, F8 to next, previous tab
map <F7> :tabp<return>
map <F8> :tabn<return>

"=====================================
" JUMPING THROUGH CODE
"=====================================

" QUICKFIX
" next/previous error
nnoremap ]q :cnext<cr>
nnoremap [q :cprev<cr>
" close the error list
nnoremap <leader>oq :copen<cr>
" open the error list
nnoremap <leader>cq :cclose<cr>
" read the error file
nnoremap <leader>lq :cfile<cr>

"=====================================
" JUMPING TAGS
"=====================================

" - use ^] to jump to tag under corsor
" - use g^] for ambiguous tags
" - use ^t to jump up the tag stack

command! -bar MakeCTags !ctags -R .
command! MakeTags MakeCTags

" jump to next matching tag
nnoremap ]t :tnext<cr>
" jump to previous matching tag
nnoremap [t :tprevious<cr>
" nmap <leader>cq :cclose<cr>`Q:delmarks Q<cr>
nnoremap <leader>ot :exec("tselect ".expand("<cword>"))<cr>
nnoremap <leader>pt :exec("ptag ".expand("<cword>"))<cr>
nnoremap <leader><C-p> :CtrlPTag<cr>

" GREP
command! -nargs=+ Grep mark Q | vimgrep /<args>/gj **/* | :cwindow
command! Make mark Q | make! | :cwindow

" vimux
command! TMake VimuxRunCommand(&makeprg)
command! Tmake VimuxRunCommand(&makeprg)
" TODO doesn't work with error list yet!
" command! TMake VimuxRunCommand(&makeprg . ' 2> errors.err')

" nnoremap :grep :Grep
" nnoremap :copen<cr> mQ:copen<cr>
" nnoremap :cclose<cr> :cclose<cr>`Q
" always open quickfix in new buffer
" set switchbuf=useopen

"=====================================
" CUSTOM MAPPINGS
"=====================================

" LEADER COMMANDS:
" o - open
" c - close
" t - toggle
" f - fix
" p - preview
" r - refresh

" fast save
"nnoremap <leader>s :update<cr>
" search for word under the cursor
nnoremap <leader>/ "fyiw /<c-r>f<cr>"
" FIX - f
" remove trailing white spaces
nnoremap <leader>fs :%s/\s\+$//e<cr>'':noh<cr>
" remove mixed indentation
" nnoremap <leader>ft gg=G''
nnoremap <leader>ft :retab<cr>
" open/close the file tree
nnoremap <leader>of :NERDTree<cr><C-w>=
nnoremap <leader>cf :NERDTreeClose<cr><C-w>=
nnoremap <leader>tf :NERDTreeToggle<cr><C-w>=
" refresh all buffers
nnoremap <leader>ra :checktime<cr>

" PREVIEW
" close the preview window
nnoremap <leader>cp :pclose<cr>
