scriptencoding utf-8

"
"                             __
" .--------.---.-.-----.-----|__.-----.-----.-----.
" |        |  _  |  _  |  _  |  |     |  _  |__ --|
" |__|__|__|___._|   __|   __|__|__|__|___  |_____|
"                |__|  |__|           |_____|
"

let g:mapleader = "\<Space>"

" Remove search highlight
nnoremap <silent> <ESC><ESC> :noh<CR>
nmap <silent> <BS> :noh<CR>

" Sane mouse scrolling
map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" map <leader>, and <leader>. to buffer prev/next buffer
noremap <Leader>, :bp<CR>
noremap <Leader>. :bn<CR>

" Close buffer
noremap ∑ :bd<CR>
noremap „ :bd!<CR>

" Toggle paste mode
map <leader>pp :setlocal paste!<cr>

" x does not overwrite yank buffer
nnoremap x "_x

" Fix whitespace
nnoremap <silent> <F4> :StripWhitespace<CR>

" Sort
vnoremap <silent> <F5> :sort<CR>

" Fast save
nmap <leader>w :w!<cr>

" Fast quit and disable Ex mode along the way
nmap <leader>q :qa!<cr>
nnoremap Q :q<cr>
noremap <C-q> :confirm qall<CR>

" Open nvim config
nmap <Leader>v :e ~/.config/nvim/init.vim<CR>

" Let's be reasonable, shall we? Move vertically by visual line
nmap k gk
nmap j gj

" Do not show stupid q: window
map q: :q

" Enable jumping in insert mode
inoremap <C-l> <Esc>$a

" Make Y not dumb
nnoremap Y y$

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

" Enable key mapping for moving lines up and down
nnoremap <silent> <C-down> :m .+1<CR>==
nnoremap <silent> <C-up> :m .-2<CR>==
inoremap <silent> <C-down> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-up> :m '<-2<CR>gv=gv

" Quickfix for TO-DOs and FIX-MEs
nmap <Leader>t :Ag \(TODO\\|FIXME\) .<cr>

" Navigate the quicklist easily
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Spell checking
map <leader>ss :setlocal spell!<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Global search and replace
" Do the search: /pattern<CR> then replace all the matches: Mreplacement<CR>
nmap S :%s//g<LEFT><LEFT>
nmap <expr> M ':%s/' . @/ . '//g<LEFT><LEFT>'

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Ctrl-Space for completions. Heck Yeah!
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
    \ "\<lt>C-n>" :
    \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
    \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
    \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

map T :vsplit term://fish<cr>i
tnoremap <Esc> <C-\><C-n>
