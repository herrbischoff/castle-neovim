" Airline {{{
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}
" Autocomplete {{{
" if (has('nvim'))
" Plug 'zchee/deoplete-zsh', { 'for': 'zsh' }
" Plug 'zchee/deoplete-docker', { 'for': 'docker' }
" Plug 'zchee/deoplete-jedi', { 'for': 'python' }
" Plug 'padawan-php/deoplete-padawan', { 'for': 'php' }
" else
" Plug 'Shougo/neocomplete.vim'
" Plug 'Valodim/vim-zsh-completion', { 'for': 'zsh' }
" endif
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn install' }
" Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/neco-syntax'
" Plug 'Shougo/neco-vim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'yarn install'}
Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' | Plug 'Shougo/neosnippet-snippets'
" }}}
" Colorschemes {{{
Plug 'junegunn/seoul256.vim'
Plug 'mhartington/oceanic-next'
Plug 'herrbischoff/cobalt2.vim'
" Plug 'godlygeek/csapprox'
" }}}
" Comments {{{
" Plug 'scrooloose/nerdcommenter'
Plug 'tyru/caw.vim'
" }}}
" CSS {{{
Plug 'JulesWang/css.vim'
Plug 'gko/vim-coloresque'
Plug 'wavded/vim-stylus'
" Plug 'vim-scripts/hexHighlight.vim', { 'for': ['css', 'stylus'] }
" }}}
" Editing {{{
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'editorconfig/editorconfig-vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ntpeters/vim-better-whitespace'
Plug 's3rvac/AutoFenc'
Plug 'terryma/vim-multiple-cursors'
Plug 'kshenoy/vim-signature'
Plug 'mattn/emmet-vim', { 'for': 'html' }
" }}}
" Elixir {{{
Plug 'slashmili/alchemist.vim'
" }}}
" External Tools {{{
Plug 'rizzatti/dash.vim'
" }}}
" Formatting {{{
Plug 'Chiel92/vim-autoformat'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'thaerkh/vim-indentguides'
Plug 'tpope/vim-surround'
Plug 'sickill/vim-pasta'
Plug 'junegunn/vim-easy-align'
" }}}
" fzf {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}}
" JavaScript {{{
" Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'yarn install' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn add tern --global' }
Plug 'elzr/vim-json'
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
" Plug '1995eaton/vim-better-javascript-completion'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/jspc.vim', { 'for': 'javascript' }

" Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'vue'] }
" Plug 'elixir-lang/vim-elixir', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx', { 'for': 'javascript' }
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
" Plug 'othree/jspc.vim', { 'for': 'javascript' }
" Plug 'othree/yajs.vim', { 'for': ['javascript', 'vue'] } | Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
" }}}
" Linting {{{
Plug 'w0rp/ale'
" }}}
" Miscellaneous {{{
if g:os ==# 'FreeBSD'
    Plug 'Shougo/vimproc', { 'do': 'gmake' }
else
    Plug 'Shougo/vimproc', { 'do': 'make' }
endif
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'keith/investigate.vim'
Plug 'vimwiki/vimwiki'
" Plug 'scrooloose/nerdtree/', { 'on': 'NERDTreeToggle' }
Plug 'airblade/vim-rooter'
" Plug 'mhinz/vim-startify'
Plug 'reedes/vim-wheel'
" }}}
" Go {{{
Plug 'fatih/vim-go'
" }}}
" PHP {{{
Plug 'tobyS/pdv', { 'for': 'php' }
Plug 'tobyS/vmustache', { 'for': 'php' }
Plug 'stanangeloff/php.vim', { 'for': 'php' }

" Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
" Plug 'StanAngeloff/php.vim', { 'for': 'php' }
" Plug 'lvht/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
" Plug 'wdalmut/vim-phpunit', { 'for': 'php' }
" }}}
" Ruby {{{
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" }}}
" Search {{{
Plug 'rking/ag.vim'
" }}}
" Syntax {{{
Plug 'davidoc/taskpaper.vim'
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }
Plug 'sheerun/vim-polyglot'
Plug 'vifm/vifm.vim'
Plug 'keith/swift.vim'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'tmux-plugins/vim-tmux'
" Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
" Plug 'vim-scripts/nginx.vim', { 'for': 'nginx' }
" Plug 'lervag/vimtex', { 'for': 'tex' }
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
" Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
" Plug 'evidens/vim-twig', { 'for': 'twig' }
" Plug 'othree/html5.vim'
" Plug 'tpope/vim-liquid', { 'for': 'liquid' }
" Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
" Plug 'dag/vim-fish', { 'for': 'fish' }
" }}}
" Tags {{{
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
" }}}
" Version Control {{{
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
" Plug 'airblade/vim-gitgutter'
" }}}
" Deactivated {{{
" Plug 'kannokanno/previm'
" Plug 'tyru/open-browser.vim'
" Plug 'benekastah/neomake'
" Plug 'junegunn/goyo.vim'
" Plug 'wakatime/vim-wakatime'
" Plug 'Shutnik/jshint2.vim'
" Plug 'godlygeek/csapprox'
" Plug 'guns/xterm-color-table.vim'
" Plug 'kien/ctrlp.vim'
" Plug 'mattn/webapi-vim'
" Plug 'sjl/gundo.vim'
" Plug 'skammer/vim-css-color'
" Plug 'tobyS/vmustache'
" Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
" Plug 'vim-scripts/progressbar-widget'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" Plug 'Konfekt/FastFold'
" Plug 'joonty/vim-sauce'
" Plug 'nelstrom/vim-markdown-folding', { 'for': 'markdown' }
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'ryanoasis/vim-devicons'
" }}}

" vim:foldmethod=marker:foldlevel=0
