syntax on
set scrolloff=8
set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

set encoding=UTF-8

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> q, :let @/ = ""<CR>

" Execute the passed search command, but check has the last used
" search pattern been cleared and do nothing in that case, to fix
" a weird search misbehavior when searching forward or backward
" is performed after clearing the search pattern
"
function! ExecuteSearch(command)
  if strlen(@/) > 0
    execute "normal! " .. a:command
  endif
endfunction

nnoremap <silent> n :call ExecuteSearch("n")<CR>
nnoremap <silent> N :call ExecuteSearch("N")<CR>
set mouse=a
set fileformat=unix
set noswapfile
set nobackup
set undodir=~/.config/vim/undodir
set undofile
set clipboard=unnamed
set noerrorbells visualbell t_vb=

set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

" Remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>

let g:python3_host_prog = expand("~/.vim_python/bin/python3")
