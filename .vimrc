syntax enable
set background=dark

set nocompatible              " be iMproved, required
filetype off                  " required

"add path search 
set path+=**
set wildmenu



"set tab
:set tabstop=4
:set shiftwidth=4
:set expandtab



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'keflavich/macvim-skim'
Plugin 'powerline/powerline'
" All of your Plugins must be added before the following line
call vundle#end()            " required

" Bounding F12 for latexmk tex file"
autocmd FileType tex nmap <buffer> <F12> :!latexmk -pdf %<CR>

" Spell check set to F6"
map <F6> :setlocal spell! spelllang=en_us<CR>


















filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
