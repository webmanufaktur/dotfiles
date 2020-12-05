" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>


" Use control-c instead of escape
nnoremap <C-c> <Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" New split tab
"vnoremap <C-S-t> :vsplit<CR>
nnoremap <C-t> :vnew<CR>
nnoremap <C-w> :bd<CR>

nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>

nnoremap <C-p> :FZF<CR>



map <leader>g :Goyo<CR>

" Goyo & Limelight
" set Goyo colors (https://jonasjacek.github.io/colors/)
let g:limelight_conceal_ctermfg = 240

" auto enable Limelight in case of Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
