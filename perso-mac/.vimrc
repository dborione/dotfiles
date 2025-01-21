call plug#begin()
Plug 'townk/vim-autoclose'
Plug 'itmammoth/doorboy.vim'
Plug 'sainnhe/everforest'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
call plug#end()

"if has('termguicolors')
"	set termguicolors
"endif

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
"colorscheme default
highlight LineNr ctermfg=darkgrey
highlight Comment ctermfg=darkgrey

"goyo minimal mod: :Goyo
"disble: !Goyo
"width: Goyo 100
"height: Goyo 100x50
"
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

colorscheme seoul256
