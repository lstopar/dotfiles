" JavaScript indentation and syntax support
Plugin 'pangloss/vim-javascript'

" disable concealing of JavaScript keywords
set conceallevel=0

" Hihglight JavaScript brackets, semicolons, comparison symbols, etc.
Plugin 'jelera/vim-javascript-syntax'

" Node.js plugin
Plugin 'moll/vim-node'
" auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color', { 'for': ['css','stylus','scss']  } " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax', { 'for': 'css'  } " CSS3 syntax support
" jump to matching tags
Plugin 'tmhedberg/matchit'

" JSON
let g:vim_json_syntax_conceal = 0

" HTML
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.ejs,*.xml"
