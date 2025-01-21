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
Plug 'ntk148v/komau.vim'
call plug#end()

let g:airline_theme='wombat'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_x=':)'
let g:airline_section_y='%F'
let g:airline_section_z='%p%% line:%l/%L col:%c'
let &t_ZH="\e[31m"
let &t_ZR="\e[31m"

"----------- Themes --------------
"Everforest theme
if has('termguicolors')
	set termguicolors
endif
let g:everforest_enable_italic = 1
""let g:everforest_background = 'medium'
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
"colorscheme everforest
"---
"
"Komau theme
colorscheme komau
set background=light
"Disable italic, enable by default
let g:komau_italic=1
" Disable bold, enable by default
let g:komau_bold=1
"---
"---------------------------------

:set number
:syntax enable
:set mouse=a
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"colorscheme default
highlight LineNr ctermfg=darkgrey
highlight Comment ctermfg=darkgrey

"let &t_SI = "\<Esc>]50;CursorShape=6\x7"
"let &t_SR = "\<Esc>]50;CursorShape=6\x7"
"let &t_EI = "\<Esc>]50;CursorShape=6\x7"
highlight Cursor guifg=red guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
"let &t_SI = "\e[5 q"
"let &t_EI = "\e[6 q"


" CSI Ps SP q
"    Set cursor style (DECSCUSR, VT520).
"    Ps = 0  -> blinking block.
"    Ps = 1  -> blinking block (default).
"    Ps = 2  -> steady block.
"    Ps = 3  -> blinking underline.
"    Ps = 4  -> steady underline.
"    Ps = 5  -> blinking bar (xterm).
"    Ps = 6  -> steady bar (xterm).
"if &term =~? "xterm" || &term =~? "rxvt"
   "autocmd VimEnter * let &t_me .= "\<Esc>[2 q"
    " blinking vertical bar
"    let &t_SI = "\<Esc>[5 q"
    " blinking block
"let &t_EI = "\<Esc>[5 q"
    "highlight  CursorLine ctermbg=Yellow ctermfg=None
    "highlight Cursor guifg=red guibg=red
    " restore cursor
    " TODO save instead of hard coding
"    autocmd VimLeave * let &t_me = "\<Esc>[2 q"
"endif

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine ctermbg=Yellow ctermfg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None

"Goyo: minimal editor mode
"goyo minimal mod: :Goyo
"disble: !Goyo
"width: Goyo 100
"height: Goyo 100x50
"
function! s:goyo_enter()
  set number
  Limelight
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

"
"Limelight: highliting mode
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

":Goyo
":set number
