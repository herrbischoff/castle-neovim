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

source $HOME/.config/nvim/plugin-settings.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/autocommands.vim
source $HOME/.config/nvim/mappings.vim
