scriptencoding utf-8

"
"              __   __   __
" .-----.-----|  |_|  |_|__.-----.-----.-----.
" |__ --|  -__|   _|   _|  |     |  _  |__ --|
" |_____|_____|____|____|__|__|__|___  |_____|
"                                |_____|
"

set autoread " Reload files changed outside vim
set backspace=indent,eol,start " Enable delete over line breaks and automatically-inserted indentation
set fileencoding=utf-8
set fileformat=unix " Set unix line endings
set fileformats=unix,mac,dos
set hidden " Don't unload buffers when they are abandoned, instead stay in the background
set lazyredraw " Screen will not be redrawn while running macros, registers or other non-typed comments
set noerrorbells
set nospell
set shortmess+=I
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set visualbell " Turn off audible bell

" Sets path variable to current directory
" set path=.,**
set path+=**

set wildmenu
set wildmode=longest,list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg                           " Go static files
set wildignore+=go/bin                           " Go bin files
set wildignore+=go/bin-vagrant                   " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=node_modules                     " Node.js modules

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" Better Completion
" set complete=.,w,b,u,t
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete

set nobackup
set backupdir=~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/tmp,/var/tmp,/tmp
set history=1000
set undodir=~/tmp " set undo file location
set undofile
set undolevels=1000 " use many muchos levels of undo
set writebackup

" Cursor shape
" if exists('$TMUX')
    " let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    " let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
" else
    " let &t_SI = "\e[5 q"
    " let &t_EI = "\e[2 q"
" endif

" MacVim
if (has('gui_macvim'))
    set linespace=2 " Set line spacing
    set guifont=Operator\ Mono\ Book\ for\ Powerline:h14
    set guioptions-=r
    set guicursor=a:blinkon0
endif

set t_Co=256
set autoindent " autoindent based on line above, works most of the time
set background=dark
set breakindent
set colorcolumn=80 " Make a mark for column 80
set copyindent " copy the previous indentation on autoindenting
set nocursorline
set diffopt+=vertical
set expandtab " use spaces instead of tabs
set foldenable " enable folding
set foldlevelstart=99 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level
" set formatoptions+=a
set gdefault
set hlsearch " highlight searches by default
set ignorecase
set incsearch " find the next match as we type the search
set laststatus=2
set lazyredraw
set linebreak
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set modelines=1
set mouse=a " Enable mouse use in all modes
set nocursorcolumn " Do not highlight column
set noequalalways
set nojoinspaces
set nolist
set number
set numberwidth=4
set relativenumber
set ruler
set scrolloff=5 " Keep the cursor visible within 3 lines when scrolling
set shiftwidth=4 " when reading, tabs are 4 spaces
set showbreak=↪ " Show line wrapping
set showmatch
set smartcase
" set smartindent " smarter indent for C-like languages
set noshiftround
set nopreserveindent
set smarttab
set nosmartindent
set tabstop=4
set softtabstop=4 " in insert mode, tabs are 4 spaces
set splitbelow
set splitright
if (has("termguicolors"))
  set termguicolors
endif
set textwidth=0 " turn off hard word wrapping
set wrap
set wrapmargin=0
set tagcase=followscs " Follow smartcase and ignorecase when doing tag search
set wrapscan

" let g:seoul256_background = 236
" colorscheme seoul256
colorscheme OceanicNext

" Enable italics
" highlight Comment gui=italic
" highlight Comment cterm=italic
" set t_ZH=[3m
" set t_ZR=[23m

" Make background transparent
if (has('nvim'))
  highlight Normal guibg=none ctermbg=none
  highlight NonText guibg=none ctermbg=none
else
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
endif
