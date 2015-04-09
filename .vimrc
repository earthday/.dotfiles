set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'Lokaltog/vim-powerline.git'
Plugin 'bling/vim-airline'
Plugin 'uarun/vim-protobuf'
"Plugin 'snipMate'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Plugin 'Mizuchi/STL-Syntax'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'editorconfig/editorconfig-vim'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set t_Co=256
"let g:Powerline_symbols='unicode'
"let g:Powerline_symbols='fancy'
"let g:Powerline_theme='solarized256'
"let g:Powerline_colorscheme='solarized256'
let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#enabled=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F4> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F3> :NERDTreeToggle<CR>
let NERDTreeWinSize=34
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
"NERDTree子窗口中不显示冗余的帮助信息
let NERDTreeMinimalUI=1
"删除文件时自动删除文件对应的buffer
let NERDTreeAutoDeleteBuffer=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MiniBufExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"显示/隐藏 MiniBufExplorer 窗口
map <Leader>bb :MBEToggle<CR>
"buffer 切换快捷键
map <C-Tab> :MBEbn<CR>
map <C-S-Tab> :MBEbp<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Customized by myself
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme desert
"colorscheme elflord
"colorscheme neon
"colorscheme solarized
"colorscheme CodeFactoryv3
"colorscheme breeze
"colorscheme jellyx
if has("gui_running")
  colorscheme phd
else
  colorscheme 256-jungle
endif

filetype plugin indent on
syntax enable
syntax on

"set guifont=Menlo\ Regular:h16
"set guifont=Monaco:h14
"set guifont=Sauce\ Code\ Powerline:h14 
set guifont=Inconsolata\ for\ Powerline:h16
set encoding=utf-8

set nu
"set rnu
set autochdir
set history=1000
set ai
set si
set expandtab
set ts=2
set st=2
set sw=2
set ignorecase
set hlsearch
set incsearch
set nobackup
set nowb
set noswapfile
set cc=120
"set lines=30 columns=90
"vim自身命令行模式智能补全
set wildmenu
"高亮显示当前行/列
set cursorline
"set cursorcolumn
"禁止折行
set nowrap

"定义快捷键的前缀，即<Leader>
let mapleader=";"

"Python特殊设置
autocmd Filetype python setlocal ts=4 sts=4 sw=4

"Ruby特殊设置
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

"Javascript特殊设置
autocmd Filetype javascirpt setlocal ts=4 sts=4 sw=4
