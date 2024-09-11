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
imap jk <ESC>
"keybindings end
