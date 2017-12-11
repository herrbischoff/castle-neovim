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

" let g:os=substitute(system('uname'), '\n', '', '')

call plug#begin()
    for g:rcfile in split(globpath('~/.config/nvim/plugins', '*.vim'), '\n')
        execute('source '.g:rcfile)
    endfor
call plug#end()

filetype plugin indent on " Enable filetype detection, allow indentation and syntax be set byt plugins
syntax enable " Enable syntax processing

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/autocommands.vim
source $HOME/.config/nvim/mappings.vim

let g:plug_window = 'above 25new'
