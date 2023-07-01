" Sets
set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set cursorline

" Theme
set termguicolors       " enable true colors support
set background=dark " or light if you want light mode
colorscheme desert

" Keybindings
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>p :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
