Plug 'w0rp/ale'

let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters = {
\   'html': ['htmlhint'],
\   'javascript': ['eslint'],
\   'stylus': [''],
\   'vim': ['vint']
\}
