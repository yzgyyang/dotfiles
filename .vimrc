set number

set laststatus=2

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
nmap <F5> :NERDTreeToggle<cr>

Plugin'vim-airline/vim-airline'

call vundle#end()

filetype plugin indent on
