syntax enable

set path+=**
set nocompatible
set autoindent
set number
set nowrap
set autoindent
set smartindent                 " Indent new lines to match old ones, or occasionally add an extra level
set linebreak                   " If lines are wrapped, don't wrap mid-word
set wildmenu                    " Show menu options when tab-completing in vim
set incsearch                   " Incremental search
set tabpagemax=40               " Open many tabs, for :tabdo commands
set mouse=nvi                   " Mouse integration
set ignorecase                  " Case insensitive
set smartcase                   " Breaks case insensitivity if capital character is supplied
set scroll=4                    " Set scroll (C-u / C-d) to be 4 lines
set hlsearch                    " Highlights all instances of serached term

" Change tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Old colorschemes: Tomorrow-Night-Eighties Atelier_HeathDark
colorscheme codedark

"======================================================
" Remaps
"======================================================

" Recolor the background color when using C-n autocompletion
highlight Pmenu ctermbg=238

" Remap ctrl-w w (go to next tab) to gs
nnoremap gs <C-w>w

" Enter turns off search highlighting
nnoremap <silent> <CR> :noh<CR><CR>

" K is just J in the opposite direction, instead of opening a bash thing
nnoremap K kJ

" Remapped Ctrl+u and Ctrl+d to move the cursor to the top/bottom, respectivley.
nnoremap <C-u> <C-u>H
nnoremap <C-d> <C-d>L

" Enter searches for \t
"nnoremap <silent> <CR> :silent! /\t<CR><CR>

" F8 toggle spell check
nnoremap <silent> <F8> :set spell!

" F9 toggle line numbers
nnoremap <silent> <F9> :set number!<CR>

" F10 sets scroll to 4
nnoremap <silent> <F10> :set scroll=4<CR>


"======================================================
" Netrw
"======================================================
let g:netrw_banner = 0         " Remove banner
let g:netrw_browse_split = 1   " Always virtical split
let g:netrw_liststyle = 3      " Always a tree structure

"======================================================
" Commands
"======================================================

" Opens a new tab, then recursivley greps for the provided value in the current directory.
" the result is opened in the quickfix window, which can be used to open files under this cursor
command! -nargs=1 Tg execute 'tabe | silent grep! -IiR <args> .' | copen 15
command! -nargs=1 G execute 'silent grep! -IiR <args> .' | copen 15

" Finds all files in the current directory and populates the quickfix window.
" annoyingly adds "||" to every line, so you must use the <ctrl-w gf> to open the file
" TODO: remove the "||" so the quickfix menu will allow me to jump to files
command! -nargs=1 Find execute 'cgetexpr system("find . -iname <args>")' | copen 15

"======================================================
" AutoCmds
"======================================================

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"======================================================
" Vim notes
"======================================================
" Example of incrementing values with find and replace
":let i=1 | g/POS=Z/s//\='POS='.i/ | let i=i+1
