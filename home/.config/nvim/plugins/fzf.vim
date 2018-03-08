Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND= 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>
