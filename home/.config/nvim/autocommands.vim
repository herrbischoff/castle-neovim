augroup configgroup

  autocmd VimEnter * highlight clear SignColumn
  " autocmd FileType netrw nmap <silent> <buffer> <Esc> :bd<cr>

  " Filetypes
  filetype on

  " autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500

  " Syntax of these languages is fussy over tabs Vs spaces
  " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType c setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType crontab setlocal nobackup nowritebackup
  autocmd FileType html EmmetInstall
  autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab indentkeys-=*<return>
  autocmd FileType jade setlocal ts=2 sts=2 sw=2 noexpandtab
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType bash,fish,sh,zsh setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
  " autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab omnifunc=phpcomplete#CompletePHP
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType vimwiki setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1

  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

  " automatically resize panes on resize
  autocmd VimResized * exe 'normal! \<c-w>='

  " CoffeeScript
  autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
  autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

  " Docker
  autocmd BufNewFile,BufRead Dockerfile setlocal ft=dockerfile
  autocmd FileType dockerfile setlocal ts=2 sts=2 sw=2 expandtab

  " Python
  autocmd BufNewFile,BufRead *.py setl ts=4 sts=4 sw=4 tw=79 expandtab autoindent fileformat=unix

  " Markdown
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} setlocal ft=markdown
  autocmd FileType markdown setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType markdown,textile setlocal textwidth=0 wrapmargin=0 wrap spell formatoptions+=l

  " CSS
  autocmd BufNewFile,BufReadPost *.css set filetype=css
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab omnifunc=csscomplete#CompleteCSS

  " Stylus
  autocmd BufNewFile,BufRead *.styl set filetype=stylus
  autocmd FileType stylus setlocal ts=2 sts=2 sw=2 expandtab

  " Pug
  autocmd BufNewFile,BufRead *.pug set filetype=pug
  autocmd FileType pug setlocal ts=2 sts=2 sw=2 expandtab

  " Vue
  autocmd FileType vue syntax sync fromstart
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
  autocmd FileType vue setlocal ts=2 sts=2 sw=2 expandtab

  " Enable spellcheck on certain filetypes
  autocmd FileType gitcommit,markdown,mail setlocal spell

  " Save folds
  au BufWinLeave * silent! mkview
  au BufWinEnter * silent! loadview

augroup END

" Add format option 'w' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace
    autocmd!
    autocmd FileType mail setlocal formatoptions+=w
    let b:deoplete_disable_auto_complete=1
  augroup END
