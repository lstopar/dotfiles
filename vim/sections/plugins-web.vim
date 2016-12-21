" JavaScript stuff
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
" debugging Node.js
Plugin 'sidorares/node-vim-debugger'
" Node.js plugin
Plugin 'moll/vim-node'
" JSON
Plugin 'elzr/vim-json'
" auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color', { 'for': ['css','stylus','scss']  } " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax', { 'for': 'css'  } " CSS3 syntax support
" jump to matching tags
Plugin 'tmhedberg/matchit'

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

" JSON
let g:vim_json_syntax_conceal = 0

" HTML
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.xml"

set wildignore+=node_modules/**
