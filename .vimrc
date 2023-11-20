"sable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" " Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" " Set tab width to 4 columns.
set tabstop=4

" " Use space characters instead of tabs.
set expandtab

" " Do not save backup files.
set nobackup

" " Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" " Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" " While searching though a file incrementally highlight matching characters
" as you type.
set incsearch

" " Ignore capital letters during search.
set ignorecase

" " Override the ignorecase option if searching for capital letters.
" " This will allow you to search specifically for capital letters.
set smartcase

" " Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
 set showmode

" Show matching words during a search.
set showmatch
"
" Use highlighting when doing a search.
set hlsearch
"
" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Plugin 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'francoiscabrol/ranger.vim'
Plug 'preservim/nerdtree'

call plug#end()

" Plug config
let g:airline#extensions#tabline#enabled = 1

" tab style
:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow

" Key Map
let mapleader = '\'

nnoremap <leader>\ ``

" Normal Mode
nnoremap <leader>a ^
nnoremap <leader>e $

" Tab
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>


" Windows
"------------------------------
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
nmap <Space>w <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap sw<left> <C-w><
nmap sw<right> <C-w>>
nmap sw<up> <C-w>+
nmap sw<down> <C-w>-
nmap sq :close<Return>

" Insert Mode
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-b> <Left>
inoremap <c-f> <Right>
inoremap <c-p> <Up>
inoremap <c-n> <Down>

" Clean Search lighline
"nnoremap <ESC> :noh<Return>

" fzf keymap
nmap <leader>ff :Files<Return>
nmap <leader>fg :GFiles<Return>
nmap <leader>fb :Buffers<Return>
nmap <leader>fa :Ag<Return>

" ranger
let g:ranger_map_keys = 0
nmap - :RangerNewTab<CR>
