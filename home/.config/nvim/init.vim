scriptencoding utf-8

"
"  __       __ __           __
" |__.-----|__|  |_  .--.--|__.--------.
" |  |     |  |   _|_|  |  |  |        |
" |__|__|__|__|____|__\___/|__|__|__|__|
"
" Herr Bischoff's own Neovim configuration
"

set shell=/bin/sh

let g:os=substitute(system('uname'), '\n', '', '')

call plug#begin()
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/autocomplete.vim
source $HOME/.config/nvim/plugins/colorschemes.vim
source $HOME/.config/nvim/plugins/editing.vim
source $HOME/.config/nvim/plugins/filetypes.vim
source $HOME/.config/nvim/plugins/formatting.vim
source $HOME/.config/nvim/plugins/misc.vim
call plug#end()

filetype plugin indent on " Enable filetype detection, allow indentation and syntax be set byt plugins
syntax enable " Enable syntax processing
" syntax off

source $HOME/.config/nvim/plugin-settings.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/autocommands.vim
source $HOME/.config/nvim/mappings.vim

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'php': ['php vendor/felixfbecker/language-server/bin/php-language-server.php'],
    \ }
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

nnoremap <silent> <F3> :IndentGuidesEnable<CR>

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2D353D   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#343D46 ctermbg=4

" hi IndentGuidesOdd guibg=#2D353D
" hi IndentGuidesEven guibg=#343D46
