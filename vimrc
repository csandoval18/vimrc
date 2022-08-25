vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"indent 4 spaces with tab and shift >
set tabstop=2
set shiftwidth=2
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

:syntax on

set nocompatible
set backspace=indent,eol,start

"Compile C++ files with <F5>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r && %:r.exe <CR> <CR>
"autocmd filetype cpp nnoremap <F5> :!g++ -g % -o %:r && %:r <CR> <CR>

"Compile python files with <F5>
:set autochdir
autocmd filetype python nnoremap <F5> :w <bar> !python  % %:r <CR> <CR>

"Compile js files with <F5>
autocmd filetype javascript nnoremap <F5> :w <bar> !node % $:r <CR> <CR>

"remap redo
nnoremap r <C-R>

"automatic indent
set autoindent
"stop vim from removing indent from blank lines
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

"add line numbers
:set number

"add matching brackets to not miss them when writing code
inoremap {{ {}<ESC>ha<ENTER><ESC>ko<TAB>
"inoremap ,, <ESC>bi"<ESC>ea"<ESC>
"nnoremap ,, <ESC>bi"<ESC>ea"<ESC>
inoremap ;; <ESC>ciw""<ESC>P
nnoremap ;; ciw""<ESC>P


"int at the same place of last line with enter
set autoindent
"set smartindent
":set paste

"vim /search highlight words
:set hlsearch

:cd C:\Users\Christian\OneDrive\Code\Code_Forces
"set relativenumber
"set number relativenumber
"set nu rnu

"remap ESC to fd
vnoremap fd <ESC> 
vnoremap FD <ESC> 

"remap command mode
inoremap fd <Esc>
inoremap FD <Esc>

cnoremap fd <ESC>
cnoremap FD <ESC>
"cmap fd <ESC>
"cmap FD <ESC>
colorscheme aurora


