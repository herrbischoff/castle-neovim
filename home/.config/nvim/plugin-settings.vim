" Airline
let g:airline_powerline_fonts = 0
let g:airline_theme='bubblegum'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = ' ☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 1

nmap ¡ <Plug>AirlineSelectTab1
nmap ™ <Plug>AirlineSelectTab2
nmap £ <Plug>AirlineSelectTab3
nmap ¢ <Plug>AirlineSelectTab4
nmap ∞ <Plug>AirlineSelectTab5
nmap § <Plug>AirlineSelectTab6
nmap ¶ <Plug>AirlineSelectTab7
nmap • <Plug>AirlineSelectTab8
nmap ª <Plug>AirlineSelectTab9
nmap ≤ <Plug>AirlineSelectPrevTab
nmap ≥ <Plug>AirlineSelectNextTab

" AutoFenc
let g:autofenc_enable = 1

" Base16
" let base16colorspace=256

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
" let g:delimitMate_jump_expansion = 1

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path        = '/opt/local/bin/editorconfig'

" emmet
let g:user_emmet_mode           = 'a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key     = '<C-Z>'

" Fugitive
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gc :Gcommit %<CR>i
nnoremap <space>gst :Gstatus<CR>
nnoremap <space>gp :Gpush<CR>
vnoremap <space>gb :Gblame<CR>

" fzf
let $FZF_DEFAULT_COMMAND= 'ag -g ""'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>

" Gundo
" nnoremap <leader>u :GundoToggle<CR>

" HexHighlight
" if exists('*HexHighlight()')
  " nnoremap <leader>h :call HexHighlight()<Return>
" endif

" javascript-libraries-syntax
let g:used_javascript_libs = 'jquery,underscore,react'

" jsx
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

" Multiple Cursors
let g:multi_cursor_exit_from_visual_mode = 0

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1

" NerdTree
map - :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable  = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" phpcomplete_extended
let g:phpcomplete_index_composer_command = '/usr/local/bin/composer'

"pdv
let g:pdv_template_dir = $HOME ."/.config/neovim/plugged/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

" Vim Better Whitespace
autocmd BufWritePre * StripWhitespace
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']

" vim-easy-align
xnoremap ga <Plug>(EasyAlign)
" Start interactive EasyAlign in visual mode (e.g. vipga)
nnoremap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)

" vim-easymotion
map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" vim-indent-guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=239
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=237

" vim-session
let g:session_autosave = 'no'
set sessionoptions-=options " Don't persist options and mappings because it can corrupt sessions.
