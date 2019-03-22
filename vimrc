set nocompatible              " be iMproved

if has('win32') || has ('win64') || has('win32unix')
	let $VIMHOME = $HOME."/vimfiles"
else
	let $VIMHOME = $HOME."/.vim"
endif

"Add plugins
source $VIMHOME/plugins.vim

" Mappings
" remap : and ;
nnoremap : ;
nnoremap ; :

vnoremap : ;
vnoremap ; :

nnoremap <C-h> gT
nnoremap <C-l> gt
" nnoremap ê <C-w><C-j>
" nnoremap ë <C-w><C-k>
" nnoremap ì <C-w><C-l>
" nnoremap è <C-w><C-h>

" fold with spacebar
nnoremap <space> za

" YCM configuration
"let g:ycm_server_python_interpreter = '/bin/python'
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
set completeopt-=preview "disable preview window"

" Ack.vim settings
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ultisnips controls
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsUsePythonVersion = 3

" solarized settings
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256

" configure look
set guifont=Consolas:h12
colorscheme solarized
if has("gui_running")
	"set background=dark
else
	"let g:solarized_termtrans=1
	"set term=xterm
	set t_Co=256
endif

" TagBar settings
nmap <F8> :TagbarToggle<CR>

" nerdtree settings
map <C-n> ;NERDTreeToggle<CR>

" ctrl-p settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" handle encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" indentation handling
set shiftwidth=2
set tabstop=2
set smartindent
set textwidth=100
set noexpandtab

" Splitting
set splitright
set splitbelow

" vim files settings
set noswapfile
set noundofile
set nobackup
set nowritebackup

" Enable folding
set foldmethod=indent
set foldlevel=99

" misc settings
set wrap
set ic 
set incsearch
set hlsearch
set backspace=indent,eol,start

set rnu "relative numbers
set nu "line numbering
syntax on

" turn off bells
set noeb vb t_vb=
set visualbell t_vb=    " turn off error beep/flash
set novisualbell

