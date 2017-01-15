augroup configgroup

  autocmd VimEnter * highlight clear SignColumn
  " autocmd FileType netrw nmap <silent> <buffer> <Esc> :bd<cr>

  " Filetypes
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType c setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType crontab setlocal nobackup nowritebackup
  autocmd FileType fish setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType html EmmetInstall
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab indentkeys-=*<return>
  autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab omnifunc=phpcomplete#CompletePHP
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vimwiki setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1

  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

  " automatically resize panes on resize
  autocmd VimResized * exe 'normal! \<c-w>='

  " CoffeeScript
  autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
  autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

  " Python
  " autocmd BufNewFile,BufRead *.py setl ts=4 sts=4 sw=4 tw=79 expandtab autoindent fileformat=unix

  " Markdown
  autocmd BufNewFile,BufRead *.md,*.markdown setlocal ft=markdown
  autocmd FileType markdown setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType markdown,textile setlocal textwidth=0 wrapmargin=0 wrap spell formatoptions+=l

  " CSS/Stylus
  autocmd BufNewFile,BufRead *.styl set filetype=stylus
  autocmd BufNewFile,BufReadPost *.css set filetype=css
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

  " Enable spellcheck on certain filetypes
  autocmd FileType gitcommit,markdown setlocal spell

  " Save folds
  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview

augroup END

" Add format option 'w' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace
    autocmd!
    autocmd FileType mail setlocal formatoptions+=w
  augroup END
