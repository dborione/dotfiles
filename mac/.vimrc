call plug#begin()
Plug 'sainnhe/everforest'
call plug#end()
:set number
:syntax enable
:set mouse=a
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
