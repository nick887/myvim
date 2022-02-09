set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" look good
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

" nerd tree
Plugin  'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" COC
Plugin 'neoclide/coc.nvim'

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" ctags
Plugin 'szw/vim-tags'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

let g:molokai_original = 1

let g:vim_tags_auto_generate = 1

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-u> :Rg<CR>
