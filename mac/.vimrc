call plug#begin()
Plug 'townk/vim-autoclose'
Plug 'itmammoth/doorboy.vim'
Plug 'sainnhe/everforest'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
call plug#end()

if has('termguicolors')
	set termguicolors
endif

syntax enable
"set t_Co=256
"colorscheme onehalfdark
let g:airline_theme='wombat'
"let g:airline_theme='onehalfdark'
"let g:airline_theme='simple'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x=':)'
"let g:airline_section_y='%-0.11{getcwd()}'
let g:airline_section_y='%F'
let g:airline_section_z='%p%% line:%l/%L col:%c'
let &t_ZH="\e[31m"
let &t_ZR="\e[31m"
"let g:everforest_enable_italic = 0
"let g:everforest_background = 'medium'
"let g:everforest_better_performance = 1
"colorscheme everforest

:set number
":syntax enable
:set mouse=a
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
highlight LineNr ctermfg=darkgrey
highlight Comment ctermfg=darkgrey

"goyo minimal mod: :Goyo
"disble: !Goyo
"width: Goyo 100
"height: Goyo 100x50
