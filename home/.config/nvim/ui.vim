" colorscheme gruvbox
"colorscheme base16-monokai
colorscheme seoul256
let g:seoul256_background = 236
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"if exists('$TMUX')
  "let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  "let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
  "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  "let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
set autoindent " autoindent based on line above, works most of the time
set background=dark
set breakindent
set colorcolumn=80 " Make a mark for column 80
set copyindent " copy the previous indentation on autoindenting
set cursorline
set diffopt+=vertical
set expandtab " use spaces instead of tabs
set foldenable " enable folding
set foldlevelstart=99 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level
set formatoptions+=or
set gdefault
set hlsearch " highlight searches by default
set ignorecase
set incsearch " find the next match as we type the search
set laststatus=2
set linebreak
" set linespace=2 " Set line spacing
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
set scrolloff=3 " Keep the cursor visible within 3 lines when scrolling
set shiftwidth=2 " when reading, tabs are 2 spaces
set showbreak=↪ " Show line wrapping
set showmatch
set smartcase
set smartindent " smarter indent for C-like languages
set tabstop=4
set softtabstop=4 " in insert mode, tabs are 4 spaces
set splitbelow
set splitright
set textwidth=0 " turn off hard word wrapping
set wrap
set wrapmargin=0
syntax enable " enable syntax processing
