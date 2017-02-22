"""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""
set history=500         " how many lines of history to remember
filetype plugin on
filetype indent on      " load filetype specific indentation files
set autoread            " autoread when file is changes elsewhere
let mapleader = ","     " leader key gives extra key combinations
let g:mapleader=","
" fast saving by ,w
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""
" Colors and Font
"""""""""""""""""""""""""""""""""""""""""""""
syntax enable
try
    colorscheme solarized
catch
endtry

set background=dark     " switch between solarized dark/light
set gfn=Source\ Code\ Pro:h14
set encoding=utf8       " utf8 encoding
set ffs=unix,dos,mac    " unix as standard file type

"""""""""""""""""""""""""""""""""""""""""""""
" Spaces & Tabs
"""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4		    " number of visual spaces/tab
set shiftwidth=4
set expandtab		    " turns tabs into spaces
set smarttab
set lbr
set tw=500              " linebreak on 500 chars
set ai                  " autoindent
set si                  " smartindent
set wrap                " wrap lines

"""""""""""""""""""""""""""""""""""""""""""""
" UI Config
"""""""""""""""""""""""""""""""""""""""""""""
set relativenumber      " show line numbers
set showcmd             " show command in bottom bar
set cmdheight=2         " height of command bar
set cursorline          " highlight current line
set ruler               " show current position
set wildmenu            " visual autocomplete for command menu
set foldcolumn=1        " bit extra margin to the left

"""""""""""""""""""""""""""""""""""""""""""""
" ignore compiled files
"""""""""""""""""""""""""""""""""""""""""""""
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set lazyredraw          " redraw only if necessary 
set showmatch           " highlight mathching parentheses
set mat=2               " how many tenth of secs to blink when matching brackets
set so=7                " set 7 lines to cursor
set hid                 " hide buffer when abandoned

"""""""""""""""""""""""""""""""""""""""""""""
" configure backspace so that is acts normal
"""""""""""""""""""""""""""""""""""""""""""""
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set magic               " for regex

"""""""""""""""""""""""""""""""""""""""""""""
" no annoying error bells
"""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""
set ignorecase          " ignore case when searching
set smartcase           " try to be smart when searching
set incsearch           " search as chars are typed
set hlsearch            " highlight matches

"""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested folds max
set foldmethod=indent   " folding based on indentation level

"""""""""""""""""""""""""""""""""""""""""""""
" Files, Backups and Undo
"""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""
"moving around
"""""""""""""""""""""""""""""""""""""""""""""
map <space> /
map <c-space> ?
" disable highlight with ",ctrl"
map <silent> <leader><cr> :noh<cr>
" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" close current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" close all buffers
map <leader>ba :bufdo bd<cr>

" navigate between buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext

" let 'tl' toggle between current and last tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" open tab with current buffers path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" switch cwd to directory of open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" specify behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" return to last edit position when opening file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"""""""""""""""""""""""""""""""""""""""""""""
" status line
"""""""""""""""""""""""""""""""""""""""""""""
" always show status line
set statusline=2

" format status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
