Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" let $FZF_DEFAULT_COMMAND= 'rg --files --hidden --follow --glob "!.git/*"'
let $FZF_DEFAULT_COMMAND= 'fd --type f --hidden --follow --exclude .git'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>
nnoremap <space>sn :Snippets<CR>
nnoremap <space>ll :BLines<CR>

let g:fzf_layout = { 'down': '~40%' }

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
