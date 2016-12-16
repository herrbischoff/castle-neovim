let mapleader = "\<Space>"

" Remove search highlight
nnoremap <ESC><ESC> :noh<CR>

map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" map <leader>, and <leader>. to buffer prev/next buffer
noremap <leader>, :bp<CR>
noremap <leader>. :bn<CR>

" Disable arrow keys
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>
" inoremap <Up>    <NOP>
" inoremap <Down>  <NOP>
" nnoremap <Left>  <NOP>
" nnoremap <Right> <NOP>
" nnoremap <Up>    <NOP>
" nnoremap <Down>  <NOP>

xmap ' S'
xmap " S"
xmap [ S[
xmap { S{
xmap ( S(

" Toggle paste mode
set pastetoggle=<F2>

" x does not overwrite yank buffer
nnoremap x "_x

" Fix whitespace
nnoremap <silent> <F4> :StripWhitespace<CR>

" Sort
vnoremap <silent> <F5> :sort<CR>

" Fast saving
nmap <leader>w :w!<cr>

" Let's be reasonable, shall we? Move vertically by visual line
nmap k gk
nmap j gj

" Fast quit
nmap <leader>q :q!<cr>

" Do not show stupid q: window
map q: :q

" Backtick to toggle folds, tilde to close all
nnoremap ` za
vnoremap ` za
nnoremap ~ zM
vnoremap ~ zM

" Make Y not dumb
nnoremap Y y$

" Opens nvim config for editing
nmap <Leader>v :e ~/.config/nvim/init.vim<CR>

" Disable Ex mode
nnoremap Q <nop>

" Search centers result
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick escaping in insert mode
inoremap jj <ESC>
inoremap \\ <ESC>

" Enable w!! for saving file with root privileges
cmap w!! w !sudo tee % >/dev/null

" Switch windows
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Enable key mapping for moving lines up and down, somehow need to be the last
" entry in keymaps
nnoremap <silent> ∆ :m .+1<CR>==
nnoremap <silent> ˚ :m .-2<CR>==
inoremap <silent> ∆ <Esc>:m .+1<CR>==gi
inoremap <silent> ˚ <Esc>:m .-2<CR>==gi
vnoremap <silent> ∆ :m '>+1<CR>gv=gv
vnoremap <silent> ˚ :m '<-2<CR>gv=gv

" Quickfix for TO-DOs and FIX-MEs
nmap <Leader>t :Ag \(TODO\\|FIXME\) .<CR>

" open ag.vim
nnoremap <leader>a :Ag
