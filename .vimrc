syntax on
execute pathogen#infect()
"call pathogen#helptags()
"
"vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" All of your Plugins must be added before the following line
"call vundle#end()            " required

execute pathogen#infect()
syntax on
filetype plugin indent on

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree    
"autocmd VimEnter * wincmd p    

"tagbar
"map <F3> :TagbarToggle<CR>     

"map ctrl line numbers         
:nmap <C-N><C-N> :set invnumber<CR>

"show line numbers             
set number

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" paste/nopaste
map <F3> :set paste<CR>
map <F4> :set nopaste<CR>

" fast quit
:nmap qq :qa<CR>

" TlistToggle
nnoremap <silent> <F8> :TlistToggle<CR>

" noh
:nmap no :noh<CR>
