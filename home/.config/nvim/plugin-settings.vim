scriptencoding utf-8

"
"        __             __                        __   __   __
" .-----|  .--.--.-----|__.-----.    .-----.-----|  |_|  |_|__.-----.-----.-----.
" |  _  |  |  |  |  _  |  |     |    |__ --|  -__|   _|   _|  |     |  _  |__ --|
" |   __|__|_____|___  |__|__|_______|_____|_____|____|____|__|__|__|___  |_____|
" |__|           |_____|       |______|                             |_____|
"

" Airline {{{

let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = ' ☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
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

" }}}
" ALE {{{

let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters = {
\   'html': ['htmlhint'],
\   'javascript': ['eslint'],
\   'vim': ['vint']
\}

" }}}
" AutoFenc {{{

let g:autofenc_enable = 1

" }}}
" closetag {{{

inoremap <C-.> <C-R>=GetCloseTag()<CR>
map <C-.> a<C-_><ESC>

" }}}
" Dash {{{

noremap <silent> <leader>d <Plug>DashSearch
let g:dash_map = {
  \ 'stylus' : ['css', 'stylus']
  \ }

" }}}
" delimitMate {{{

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
" let g:delimitMate_jump_expansion = 1

" }}}
" deoplete {{{

let g:deoplete#enable_at_startup = 1

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" let g:deoplete#enable_ignore_case = 1 let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1 let g:deoplete#enable_refresh_always =
" 1 let g:deoplete#max_abbr_width = 0 let g:deoplete#max_menu_width = 0 let
" g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
" call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])
"
" let g:tern_request_timeout = 1
" let g:tern_request_timeout = 6000
" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#enable_refresh_always = 1
" let g:deoplete#max_abbr_width = 0
" let g:deoplete#max_menu_width = 0
" let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
"
" let g:tern_request_timeout = 1
" let g:tern_request_timeout = 6000
" let g:tern#command = ["tern"]
" let g:tern#arguments = ["--persistent"]

" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" let g:tern#filetypes = [
    " \ 'jsx',
    " \ 'javascript.jsx',
    " \ 'vue'
    " \ ]

" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}
" neocomplete {{{

" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3
"
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}
" editorconfig {{{

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path        = '/opt/local/bin/editorconfig'

" }}}
" emmet {{{

let g:user_emmet_mode           = 'a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key     = '<C-Z>'

" }}}
" Fugitive {{{

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gc :Gcommit %<CR>i
nnoremap <space>gst :Gstatus<CR>
nnoremap <space>gp :Gpush<CR>
vnoremap <space>gb :Gblame<CR>

" }}}
" fzf {{{

let $FZF_DEFAULT_COMMAND= 'ag -g ""'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>

" }}}
" Gundo {{{

" nnoremap <leader>u :GundoToggle<CR>

" }}}
" HexHighlight {{{

" if exists('*HexHighlight()')
  " nnoremap <leader>h :call HexHighlight()<Return>
" endif

" }}}
" investigate.vim {{{

let g:investigate_use_dash=1
let g:investigate_use_dash_for_ruby=1

" }}}
" javascript-libraries-syntax {{{

" let g:used_javascript_libs = 'jquery,underscore,react'

" }}}
" jsx {{{

" let g:jsx_ext_required = 1 " Allow JSX in normal JS files

" }}}
" Multiple Cursors {{{

let g:multi_cursor_exit_from_visual_mode = 0

" }}}
" NERD Commenter {{{

" let g:NERDSpaceDelims = 1
" let g:NERDCompactSexyComs = 1
" let g:NERDCommentEmptyLines = 1

" }}}
" NerdTree {{{

map - :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable  = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" }}}
" pdv {{{

let g:pdv_template_dir = $HOME ."/.config/nvim/plugged/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

" }}}
" Previm {{{

" let g:previm_open_cmd = 'open -a Safari'

" }}}
" ternjs {{{

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

" }}}
" UltiSnips {{{

" let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsListSnippets        = '<s-tab>'
let g:UltiSnipsJumpForwardTrigger  = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit           = 'vertical'
let g:UltiSnipsSnippetsDir="$HOME/.config/nvim/UltiSnips"

" }}}
" vimtex {{{

let g:vimtex_view_general_viewer
      \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf'

" This adds a callback hook that updates Skim after compilation
let g:vimtex_latexmk_callback_hook = 'UpdateSkim'
function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:cmd = [g:vimtex_view_general_viewer, '-r']
  if !empty(system('pgrep Skim'))
    call extend(l:cmd, ['-g'])
  endif
  if has('nvim')
    call jobstart(l:cmd + [line('.'), l:out])
  elseif has('job')
    call job_start(l:cmd + [line('.'), l:out])
  else
    call system(join(l:cmd + [line('.'), shellescape(l:out)], ' '))
  endif
endfunction

" }}}
" Vim Better Whitespace {{{

autocmd BufWritePre * StripWhitespace
let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown', 'mail']

"" }}}
" vim-easy-align {{{

xnoremap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
nnoremap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)

" }}}
" vim-easymotion {{{

map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" }}}
" vim-indent-guides {{{

let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#2D353D
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#343D46

" }}}
" vim-plug {{{

let g:plug_window = 'above 25new'

" }}}
" vim-rooter {{{

let g:rooter_silent_chdir = 1

" }}}
" vim-session {{{

let g:session_autosave = 'no'
set sessionoptions-=options " Don't persist options and mappings because it can corrupt sessions.

" }}}
" YouCompleteMe {{{
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_semantic_triggers['javascript'] = ['.']
" }}}

" vim:foldmethod=marker:foldlevel=0:ft=vim
