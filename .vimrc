set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"Plugins
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on
autocmd vimenter * NERDTree

"Environment stuff
let mapleader=','
colorscheme blue
:set hlsearch
:set expandtab
:set shiftwidth=4
:set autoindent
:set smartindent
:filetype indent on
:set number
:set relativenumber
:set number
:set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"Turning off highlight syntax
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
nnoremap <leader>w <C-w>v <C-w>l

"Setting ESC key
inoremap jj <ESC> 

"Tab Completion
function! Tab_Or_complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2,3) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_complete()<CR>
:set dictionary="/usr/dict/words"

"split navigation
set wmh=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

set foldmethod=indent
set foldlevel=99
nnoremap <silent><C-n> :nohl<CR><C-n>

"Python specific settings
au BufNewFile,BufRead *.py
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set textwidth=79
	set expandtab
	set autoindent
	set fileformat=unix
