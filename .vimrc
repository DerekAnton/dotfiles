syntax enable

" =========================== Pre-Sets ===========================

set autoindent                  " Auto indentation of new lines
set number                      " Line numbers enabled
set nowrap                      " Text wrapping disabled
set smartindent                 " Indent new lines to match old ones, or occasionally add an extra level
set linebreak                   " If lines are wrapped, don't wrap mid-word
set wildmenu                    " Show menu options when tab-completing in vim
set wildmode=longest:full,full  " Make the wildmenu larger
set incsearch                   " Incremental search
set tabpagemax=80               " Open many tabs, for :tabdo commands
set scroll=4                    " Sets the scroll amount to be 4 lines
set mouse=nvi                   " Enables mouse interactions (see :help mouse-using)
set ignorecase                  " Case insensitive search
set smartcase                   " Overrides case insensitivity if there is mixed case
set tabstop=4                   " Controls the number of spaces that will be inserted when the tab key is pressed
set shiftwidth=4                " Automatic indentation width
set expandtab                   " Changes all tab characters to spaces
set vb                          " Disable error bells
set ttyfast                     " Faster screen redraw
set splitbelow                  " Split below rather than above
set splitright                  " Split right rather than left
set noswapfile                  " No swap files created when opening files (warning: will lose unsaved changes if vim crashes with this)
set hlsearch                    " Always highlight all search results
set t_vb=                       " Disable annoying visual terminal bell (screen flashing)
set laststatus=2                " Show statusline (bottom bar)
set statusline+=%F              " Add persistent full filepath to statusline

colorscheme halfdark          " Custom colorscheme loaded from ~/.vim/colors/

" =========================== Custom hotkeys ===========================

" Enter key turns off search highlighting
nnoremap <silent> <CR> :noh<CR><CR>

" K is just J in the opposite direction
nnoremap K kJ

" Toggle line numbers
nnoremap <silent> <F9> :set number!<CR>

" Set scroll to 4 (equivilant to one mouse wheel scroll)
nnoremap <silent> <F10> :set scroll=4<CR>

" F11 reserved gnome hotkey (full screen)

" Toggles between folding
nnoremap <silent> <F12> :set foldmethod=syntax<Bar>echo "NOTE: zr unfold, zR unfold all, zm fold, zM fold all"<CR>

" Sets Ctrl+\ to go to expand ctags in a new tab for the word currently under your cursor
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Maps _ to be maximize split
map _ <C-w>_

" maps | to be maximize veritcal split
map \| <C-w>\|

" Maps = to be reset all splits
map = <C-w>=

" Makes jumping between split windows to be more like navigating through tabs
map gs <C-w>w

" Makes open file under cursor open the file in a new tab rather than the current buffer
map gf <C-w>gf

" Makes goto file under cursor open the file in a new split rather than the current buffer
nnoremap gos <C-w>vgf

" goto file under cursor, assumes you want to close the quickfix window on selection
map GF <C-w>gfgT:q<CR>gt

" =========================== Custom Commands ============================

" Populate the quickfix window (split) with the output of a grep statement
command -nargs=1 G execute 'silent grep! -IiR --exclude-dir=.git --exclude-dir=wikiPages --exclude-dir=Scenarios --exclude=cscope* --exclude=*.orig --exclude=tags --exclude=TAGS --exclude=Makefile <args> .' | copen 15

" Open a new tab and then populate the quickfix window (split) with the output of a grep statement results
command -nargs=1 Tg execute 'tabe | silent grep! -IiR --exclude-dir=.git --exclude-dir=wikiPages --exclude-dir=Scenarios --exclude=cscope* --exclude=*.orig --exclude=tags --exclude=TAGS --exclude=Makefile <args> .' | copen 15

" Populate the quickfix window with a find command results
command -nargs=1 F execute 'cgetexpr system("find . -iname <args>")' | copen 15
" Note: gf searches and opens the file under the cursor in a new tab and is
"       very useful in conjunction with this command

" Git gui blame for the file & line your cursor is currently on
command -nargs=0 Blame execute system("git gui blame --line=" . line(".") . " " . @%)

" Gitk the file you are currently editing
command -nargs=0 Gitk execute system("gitk " . @%)

" Git difftool the file you are currently editing
command -nargs=0 Difftool execute system("git difftool " . @%)

" Git difftool --cached the file you are currently editing
command -nargs=0 Cached execute system("git difftool --cached " . @%)

" Open the current file's corresponding test file (assumes new include/test file structure)
command -nargs=0 Test execute 'tabe ' . system("echo " . @% . " | sed 's,include,test,g' | sed 's,\.hpp,Test.cpp,g'")

" Special make command to always build RTSTF against compiled COTS
"command -nargs=* -complete=shellcmd Make new | setlocal buftype=nofile bufhidden=hide noswapfile | r system("make --directory=~/git/RTSTF/ -j5 COTS_ROOT=/ap.org/olympus/git/repos/RTSTF_compiled_cots")

" Sources my bashrc to get a custom bash meldtheirs function
" Note: meldtheirs takes a file in your ~/git/RTSTF/ directory and melds it against a matching file owned by the provided user
"       This Meldtheirs function calls my bash meldtheirs on the file you are editing, against the user you pass it
command -nargs=1 Meldtheirs execute system("source ~/.bashrc && meldtheirs " . "<args>" . " " . @%)

" Assumes you are editing someone else's ~user/git/RTSTF/ file and melds it against your version
command -nargs=0 Meldmine execute system("source ~/.bashrc && meldmine " . @%)

command -nargs=0 DH execute 'cd ~/git/RTSTF'

" =========================== Autocmds ============================

" automatically open the file explorer
" autocmd VimEnter * Explore
" Remove trailing whitespace on file write
autocmd BufWritePre * :%s/\s\+$//e

" =========================== Variables ===========================

" Quickly insert logging statements
let @a = 'ostd::cout << " [" <<   << "]" << std::endl;'
let @c = 'ostd::cout << << std::endl;'
let @l = 'oLOG(mLogger.info, "");'

" =========================== Netrw settings  =============================
" Note: When using netrw (the vim file explorer) you can cursor over a file
"       and hit (o, v, t to open the file in current buffer, virt split, or
"       tab) or create a new diretory (d) or new file (%)
let g:netrw_liststyle=3 " sets the default netrw to be a list view
let g:netrw_banner=0    " removes the help banner
let g:netrw_winsize=85  " sets the default size of a window opened from netrw to be (in window percent size)

" ========================================================================

" Turn off syntax highlight if in vimdiff mode
if &diff
    syntax off
endif

" Forces/enables folding for xml files
"augroup XML
"    autocmd!
"    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
"augroup END

" Function to force tabs to only show the filename (not abbreviated full path)
function! Tabline() abort
    let l:line = ''
    let l:current = tabpagenr()

    for l:i in range(1, tabpagenr('$'))
        if l:i == l:current
            let l:line .= '%#TabLineSel#'
        else
            let l:line .= '%#TabLine#'
        endif

        let l:label = fnamemodify(
            \ bufname(tabpagebuflist(l:i)[tabpagewinnr(l:i) - 1]),
            \ ':t'
        \ )

        let l:line .= '%' . i . 'T' " Starts mouse click target region.
        let l:line .= '  ' . l:label . '  '
    endfor

    let l:line .= '%#TabLineFill#'
    let l:line .= '%T' " Ends mouse click target region(s).

    return l:line
endfunction

set tabline=%!Tabline()
