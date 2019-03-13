set nocompatible              " be iMproved
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32') || has('win64') || has('win32unix')
	set rtp+=~/vimfiles/bundle/Vundle.vim
	call vundle#begin('~/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin('~/.vim/bundle')
endif

Plugin 'VundleVim/Vundle.vim'

" syntax highlight
Plugin 'scrooloose/syntastic'

Plugin 'klen/python-mode'
Plugin 'sheerun/vim-polyglot'

" IDE 
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive' "git support
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter' "git diff column

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

call vundle#end()            " required
filetype plugin indent on    " required
