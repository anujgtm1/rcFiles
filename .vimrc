filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/Vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'jalvesaq/Nvim-R'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
Plugin 'bolasblack/csslint.vim'
Plugin 'halletj/jslint.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
" Put your non-Plugin stuff after this lin

"Airline Configuration start
set t_Co=256
set linespace=0
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

"airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
set noshowmode

let g:Airline#extensions#tabline#enabled = 1
let g:airline_detect_modified = 1

"
"Airline Configuration end
"

"Appearance and colorschemes
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
"colorscheme end
"

"Remove trailing whitespaces
"autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

"Vim options start
if !&scrolloff
  set scrolloff=4       " Show next 3 lines while scrolling.
endif
set tabstop=4
syntax enable
set showcmd
set shiftwidth=4
set incsearch
set softtabstop=4
set expandtab
set smarttab
set number
set relativenumber
set incsearch
"set cursorline
"Vim options end

"Keybindings start
let mapleader="\<SPACE>"
" Use ; for commands
nnoremap ; :
" Use Q to execute default register
nnoremap Q @q
"Navigate buffers using C-j,k
"Navigate windows using C-h,l
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>
map <C-L> <C-w>w
map <C-H> <C-w>W
map <leader>j :lnext<CR>
map <leader>k :lprev<CR>
map <leader>e :tabprevious<CR>
map <leader>r :tabnext<CR>
map <leader>w :tabnew<CR>
nmap <leader>t :TagbarToggle<CR>
"keybindings end

"Added Commands
command Jc execute "!javac %"
command Jv execute "!java %:r"
"Added Commands End

"Syntastic settings
"let g:syntastic_python_python_exec = '/path/to/python3'
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Syntastic settings end

augroup Shebang
  autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding:utf-8 -*- \<nl>\"|$
  autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: None -*-\<nl>\"|$
  autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
  autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
augroup END
