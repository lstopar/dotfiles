" YouCompleteMe for better GOTO functionality
" Plugin 'Valloric/YouCompleteMe'
" JSON
Plugin 'elzr/vim-json'
" auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color', { 'for': ['css','stylus','scss']  } " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax', { 'for': 'css'  } " CSS3 syntax support
" jump to matching tags
Plugin 'tmhedberg/matchit'

"=================================
" SHOW INDENT LINE
Plugin 'Yggdroot/indentLine'
" disable the conceal settings of indentLine
let g:indentLine_setConceal = 0
"=================================

" JSON
let g:vim_json_syntax_conceal = 0

" HTML
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.xml"

" syntastic
let g:syntastic_python_flake8_args='--ignore=E127,E225,E226,E231,H233,E261,E262,E265,E302,E303,E401,E501,E731'
