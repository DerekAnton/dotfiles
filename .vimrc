syntax enable

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

" enables the mouse see :help mouse-using
set mouse=nvi

" Case insensitive search, unless a character in the search phrase is capital
set ignorecase
set smartcase

" Change tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

 " Enter turns off search highlighting
nnoremap <silent> <CR> :noh<CR><CR>

" K is just J in the opposite direction, instead of opening a bash thing
nnoremap K kJ

" Set scroll to be 4 lines
set scroll=4

" Remapped Ctrl+u and Ctrl+d to move the cursor to the top/bottom, respectivley.
nnoremap <C-u> <C-u>H
nnoremap <C-d> <C-d>L

" Enter searches for \t
"nnoremap <silent> <CR> :silent! /\t<CR><CR>

" F8 to toggle between tabs and :n
let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

" F9 now toggles line numbers
nnoremap <silent> <F9> :set number!<CR>

" F10 sets scroll to 4
nnoremap <silent> <F10> :set scroll=4<CR>

" Colorscheme
colorscheme peachpuff

" Recolor the background color when using C^n autocompletion
highlight Pmenu ctermbg=238

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"======================================================
" Vim notes
"======================================================
" Example of incrementing values with find and replace
":let i=1 | g/POS=Z/s//\='POS='.i/ | let i=i+1

" Example of pasting n times
" 130p
