set background=dark
set tabstop=2
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins

" when editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" navigate between buffers with Ctrl j & k
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

" navigate between tabs with Ctrl l & h
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
