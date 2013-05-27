set background=dark
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
filetype plugin on      " use the file type plugins

try
  colorscheme solarized
  catch
endtry

" highlight matching brackets and search results
set showmatch
set hlsearch

" When editing a file, always jump to the last cursor position
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

" list files on TAB
set wildmode=longest:full
set wildmenu

" no backups => git ftw
set nobackup
set nowb
set noswapfile

" indent & tabs
set smarttab
set shiftwidth=2
set tabstop=2

set ai " auto indent
set si " smart indent
set wrap " wrap line

" serach
map <space> /
map <c-space> ?
