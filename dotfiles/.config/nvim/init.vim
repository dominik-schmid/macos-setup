" Sets
set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set cursorline

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Luxed/ayu-vim'    " ayu theme
Plug 'ellisonleao/gruvbox.nvim'  " gruvbox theme
call plug#end()

" Theme
set termguicolors       " enable true colors support
"set background=light    " for light version of theme
"set background=dark     " for either mirage or dark version.
" NOTE: `background` controls `g:ayucolor`, but `g:ayucolor` doesn't control `background`
"let g:ayucolor="mirage" " for mirage version of theme
"let g:ayucolor="dark"   " for dark version of theme
" NOTE: g:ayucolor will default to 'dark' when not set.
"colorscheme ayu

set background=dark " or light if you want light mode
colorscheme gruvbox

" Keybindings
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>p :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
