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

let g:loaded_python_provider = 1 " Disable Python 2 support
let g:loaded_ruby_provider = 1 " Disable Ruby support
let g:loaded_node_provider = 1 " Disable Node support

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

let g:plug_window = 'enew'

" Enable project-specific vimrc
set exrc
set secure

" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" set path=.,resources/assets/js
" set includeexpr=substitute(v:fname,'^\\~','resources/assets/js','')
" set suffixesadd=.js,.vue

" Trigger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
