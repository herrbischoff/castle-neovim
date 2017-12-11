Plug 'nathanaelkane/vim-indent-guides'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" nnoremap <silent> <F3> <Plug>IndentGuidesEnable
" let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2D353D ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#343D46 ctermbg=4

" hi IndentGuidesOdd guibg=#2D353D
" hi IndentGuidesEven guibg=#343D46
