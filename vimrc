set nocompatible              " be iMproved
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32') || has('win32unix')
	set rtp+=~/vimfiles/bundle/Vundle.vim
	call vundle#begin('~/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin('~/.vim/bundle')
endif

Plugin 'VundleVim/Vundle.vim'

" syntax highlight
Plugin 'scrooloose/syntastic'

" IDE 
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'

" code completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'SirVer/ultisnips'

" compatibility between YCM and ultisnips
Plugin 'ervandew/supertab'

" directory tree navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'

" Latex support?
Plugin 'xuhdev/vim-latex-live-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" solarized settings
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 256
if has("gui_running")
	set t_Co=256
	let g:solarized_termtrans=1
	set background=dark
	colorscheme solarized
else
	set t_Co=256
endif

" TagBar settings
nmap <F8> :TagbarToggle<CR>

" nerdtree settings
map <C-n> ;NERDTreeToggle<CR>

" ctrl-p settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Python settings
au BufNewFile,BufRead *.py
    \ autoindent
    \ fileformat=unix

" handle encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" indentation handling
set shiftwidth=2
set tabstop=2
set smartindent
set textwidth=100

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

" set look
set guifont=Consolas:h12
"colorscheme torte
colorscheme solarized

set rnu "relative numbers
set nu "line numbering
syntax on

" turn off bells
set noeb vb t_vb=
set visualbell t_vb=    " turn off error beep/flash
set novisualbell

