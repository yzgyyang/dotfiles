" Set 256Color terminal
set laststatus=2
set t_Co=256

set nocompatible
filetype off

" Add vundle support
" To install vundle: git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Bundles
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ShowTrailingWhitespace'
Plugin 'dracula/vim'

nmap <F5> :NERDTreeToggle<cr>

call vundle#end()

" Indent on
filetype plugin indent on
" Syntax on
syntax on
" Line number
set number
" Current line highlight
set cursorline
" Theme
color dracula
