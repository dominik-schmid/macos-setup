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
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" For C#/Unity
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
call plug#end()

let g:prettier#exec_cmd_path = "~/.local/n/bin/prettier"

" Only run the specified linters
" let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

"let g:coc_global_extensions=[ 'coc-omnisharp' ]
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
let b:ale_linters = ['cs']

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'cs': ['prettier'],
\}

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
" pv = Project view, open file explorer in vertical split view
nnoremap <leader>pv :Vex<CR>
" Show git files
nnoremap <C-p> :GFiles<CR>
" Show current working directory's files
nnoremap <leader>p :Files<CR>
" Jump forward in selection list
nnoremap <C-j> :cnext<CR>
" Jump backward in selection list
nnoremap <C-k> :cprev<CR>
" Copy to system's clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y
" Copy the whole file to system's clipboard
nnoremap <leader>Y gg"+yG
" Move highlighted code up and down and automatically indent the code, i.e. when
" code is moved into a function
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" For C#/Unity/CoC
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

