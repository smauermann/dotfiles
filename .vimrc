" Colors
syntax enable
set background=dark     " switch between solarized dark/light
colorscheme solarized

" Spaces & Tabs
set tabstop=4		    " number of visual spaces/tab
set softtabstop=4       " number of spaces when editing
set expandtab		    " turns tabs into spaces

" UI Config
set relativenumber      " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype specific indentation files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only if necessary 
set showmatch           " highlight mathching parentheses

" Searching
set incsearch           " search as chars are typed
" set hlsearch          " highlight matches

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested folds max
nnoremap <space> za
set foldmethod=indent   " folding based on indentation level
