let mapleader = "\<Space>"

" Remove search highlight
nnoremap <silent> <ESC><ESC> :noh<CR>

map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" map <leader>, and <leader>. to buffer prev/next buffer
noremap <Leader>, :bp<CR>
noremap <Leader>. :bn<CR>

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
" set pastetoggle=<F2>
map <leader>pp :setlocal paste!<cr>

" x does not overwrite yank buffer
nnoremap x "_x

" Fix whitespace
nnoremap <silent> <F4> :StripWhitespace<CR>

" Sort
vnoremap <silent> <F5> :sort<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Fast save
nmap <leader>w :w!<cr>

" Fast quit
nmap <leader>q :qa!<cr>

" Open and source nvim config
nmap <Leader>v :e ~/.config/nvim/init.vim<CR>
nmap <Leader>s :source ~/.config/nvim/init.vim<CR>

" Let's be reasonable, shall we? Move vertically by visual line
nmap k gk
nmap j gj

" Do not show stupid q: window
map q: :q

" Backtick to toggle folds, tilde to close all
" nnoremap ` za
" vnoremap ` za
" nnoremap ~ zM
" vnoremap ~ zM

" Enable jumping in insert mode
inoremap <C-l> <Esc>$a

" Make Y not dumb
nnoremap Y y$

" Disable Ex mode
nnoremap Q <nop>

" Search centers result
nnoremap n nzzzv
nnoremap N Nzzzv

" Quick escaping in insert mode
inoremap \\ <ESC>

" Switch windows
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Enable key mapping for moving lines up and down, somehow need to be the last
" entry in keymaps
nnoremap <silent> <down> :m .+1<CR>==
nnoremap <silent> <up> :m .-2<CR>==
inoremap <silent> <down> <Esc>:m .+1<CR>==gi
inoremap <silent> <up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <down> :m '>+1<CR>gv=gv
vnoremap <silent> <up> :m '<-2<CR>gv=gv

" Quickfix for TO-DOs and FIX-MEs
nmap <Leader>t :Ag \(TODO\\|FIXME\) .<CR>

" open ag.vim
nnoremap <leader>a :Ag

" ===
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Spell checking
map <leader>ss :setlocal spell!<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
