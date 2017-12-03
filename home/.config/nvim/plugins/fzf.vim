Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND= 'ag -g ""'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>
