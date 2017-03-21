" Plug 'airblade/vim-gitgutter'
" Plug 'chriskempson/base16-vim'
" Plug 'nelstrom/vim-markdown-folding', { 'for': 'markdown' }
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'ryanoasis/vim-devicons'
" Plug 'sickill/vim-monokai'
" Plug 'tmux-plugins/vim-tmux'
" Plug 'tomasr/molokai'
" Plug 'vim-scripts/hexHighlight.vim', { 'for': ['css', 'stylus'] }

""" PHP
" Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
" Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }
" Plug 'tobyS/pdv', { 'for': 'php' }

" Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
" Plug 'shawncplus/phpcomplete.vim'
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
" Plug 'lvht/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
" Plug 'wdalmut/vim-phpunit', { 'for': 'php' }

""" Comments
Plug 'scrooloose/nerdcommenter'
" Plug 'tomtom/tcomment_vim'

""" CSS
Plug 'JulesWang/css.vim'
Plug 'gko/vim-coloresque'
Plug 'wavded/vim-stylus'

""" Colorschemes
Plug 'junegunn/seoul256.vim'
Plug 'AlessandroYorba/Sidonia'

""" JavaScript
Plug 'carlitux/deoplete-ternjs'
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'vue'] }
" Plug 'elixir-lang/vim-elixir', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx', { 'for': 'javascript' }
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
" Plug 'othree/jspc.vim', { 'for': 'javascript' }
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'vue'] } | Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }

""" Markup Languages
Plug 'digitaltoad/vim-pug'
Plug 'evidens/vim-twig'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'tpope/vim-liquid'
" Plug 'vim-scripts/closetag.vim'

""" Swift
Plug 'toyamarinyon/vim-swift'

""" Ruby
Plug 'vim-ruby/vim-ruby'

""" Go
Plug 'fatih/vim-go'

""" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ntpeters/vim-better-whitespace'
Plug 'reedes/vim-wheel'
Plug 'rking/ag.vim'
Plug 's3rvac/AutoFenc'
Plug 'scrooloose/nerdtree/', { 'on': 'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/nginx.vim'
" Plug 'Shougo/vimproc', { 'do': 'make' }
" Plug 'diepm/vim-rest-console'
" Plug 'joonty/vim-sauce'
" Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
" Plug 'vim-scripts/progressbar-widget'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" Plug 'Konfekt/FastFold'
"
Plug 'vimwiki/vimwiki'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'benekastah/neomake'
Plug 'davidoc/taskpaper.vim'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'parkr/vim-jekyll'
Plug 'rizzatti/dash.vim'
Plug 'itspriddle/vim-marked'
Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'

" Plug 'wakatime/vim-wakatime'
" Plug 'Shutnik/jshint2.vim'
" Plug 'Valloric/YouCompleteMe', { 'dir': '~/.config/nvim/plugged/YouCompleteMe', 'do': './install.py --clang-completer --tern-completer' }
" Plug 'ervandew/supertab'
" Plug 'godlygeek/csapprox'
" Plug 'guns/xterm-color-table.vim'
" Plug 'herrbischoff/cobalt2.vim'
" Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
" Plug 'mattn/webapi-vim'
" Plug 'morhetz/gruvbox'
" Plug 'phpvim/phpcd.vim', { 'for': 'php' }
" Plug 'scrooloose/syntastic'
" Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }
" Plug 'sjl/gundo.vim'
" Plug 'skammer/vim-css-color'
" Plug 'tobyS/vmustache'
