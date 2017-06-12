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

" Enter searches for \t
"nnoremap <silent> <CR> :silent! /\t<CR><CR>

" F8 to toggle between tabs and :n
let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

" Colorscheme
colorscheme peachpuff

" Recolor the background color when using C^n autocompletion
highlight Pmenu ctermbg=238

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e