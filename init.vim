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
Plugin 'honza/vim-snippets'

" fzf
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" ctags
Plugin 'szw/vim-tags'
Plugin 'ludovicchabant/vim-gutentags'

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
nnoremap <silent> <C-g> :Rg<CR>
nnoremap <esc> <esc> :noh<CR>

" snippets
imap <C-l> <Plug>(coc-snippets-expand)

" ctags	
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

