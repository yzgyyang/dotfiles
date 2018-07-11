" Set 256Color terminal and mouse
set laststatus=2
set termguicolors
set ttymouse=xterm2
set mouse=a

set nocompatible
filetype off

" Add vundle support
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
set relativenumber
" Backspace indent, eol, start
set backspace=2
" Current line highlight
set cursorline
" Disable mouse auto visual
set mouse-=a
" 80 character count
set colorcolumn=80

" Ignore truecolor and italic settings
" https://github.com/dracula/vim/issues/96
"let g:dracula_colorterm = 0
let g:dracula_italic = 0
" Theme
color dracula

