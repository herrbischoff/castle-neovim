scriptencoding utf-8

"
"              __                                                     __
" .---.-.--.--|  |_.-----.----.-----.--------.--------.---.-.-----.--|  .-----.
" |  _  |  |  |   _|  _  |  __|  _  |        |        |  _  |     |  _  |__ --|
" |___._|_____|____|_____|____|_____|__|__|__|__|__|__|___._|__|__|_____|_____|
"

augroup filetypes
    autocmd FileType bash,fish,sh,zsh setlocal ts=4 sts=4 sw=4
    autocmd FileType c setlocal ts=8 sts=8 sw=8
    autocmd FileType crontab setlocal nobackup nowritebackup
    autocmd FileType css setlocal ts=2 sts=2 sw=2
    autocmd FileType dockerfile setlocal ts=2 sts=2 sw=2
    autocmd FileType gitcommit,markdown,mail setlocal spell formatoptions+=w
    autocmd FileType html setlocal ts=2 sts=2 sw=2
    autocmd FileType jade,pug setlocal ts=2 sts=2 sw=2
    autocmd FileType javascript,json setlocal ts=2 sts=2 sw=2
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    " autocmd FileType markdown setlocal ts=4 sts=4 sw=4 textwidth=0 wrapmargin=0 wrap spell formatoptions+=l
    autocmd FileType markdown setlocal ts=4 sts=4 sw=4 spell wrap linebreak nolist textwidth=79 formatoptions+=t
    autocmd FileType php setlocal ts=4 sts=4 sw=4
    autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=79 autoindent fileformat=unix
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2
    autocmd FileType stylus setlocal ts=2 sts=2 sw=2
    autocmd FileType vimwiki setlocal ts=4 sts=4 sw=4
    autocmd FileType vue setlocal ts=2 sts=2 sw=2
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2

    " Make sure Vue files are correctly highlighted
    autocmd FileType vue syntax sync fromstart

    " Make folding work as expected
    " autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
    " autocmd InsertEnter,WinLeave * setlocal foldmethod=manual

    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} setlocal ft=markdown
    autocmd BufNewFile,BufRead *.js setlocal ft=javascript
    autocmd BufNewFile,BufRead *.fish setlocal ft=fish
augroup END

augroup configgroup
    " automatically resize panes on resize
    autocmd VimResized * exe 'normal! \<c-w>='

    " Set Terminal statusline
    autocmd TermOpen * setlocal statusline=%{b:term_title}
augroup END
