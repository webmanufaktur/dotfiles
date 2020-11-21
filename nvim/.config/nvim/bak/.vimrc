

"Define leader key
let mapleader =" "


"Reload VIM with new configuration
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>


nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>





nnoremap <C-p> :FZF<CR>
":set mouse=a

" nnoremap <C-t> :tabnew <cr> 
" nnoremap <C-w> :tabclose <cr>

" VIM Plugin Manager
" https://github.com/junegunn/vim-plug
" Check if installed
" otherwise install it

if ! filereadable(expand('~/.vim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.vim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.vim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


" Plugins Managed
call plug#begin()

	"Plug 'tpope/vim-fugitive'
        Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug '907th/vim-auto-save'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
        Plug 'vimwiki/vimwiki'
	Plug 'vim-airline/vim-airline-themes'
        "Plug 'gorodinskiy/vim-coloresque'
        Plug 'morhetz/gruvbox'
        Plug 'joshdick/onedark.vim'
        Plug 'PotatoesMaster/i3-vim-syntax'
        Plug 'prettier/vim-prettier', {
	   \ 'do': 'yarn install',
	   \ 'for': ['javascript', 'sass', 'php', 'css', 'less', 'scss', 'json', 'html'] } 

	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'mattn/emmet-vim'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
        Plug 'junegunn/fzf.vim'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
" END Plugins Managed



" Load Gruvbox theme after entering Vim to ensure it's loaded
"autocmd vimenter * colorscheme gruvbox
colorscheme onedark
set background=dark

"Emmet config
let g:user_emmet_install_global = 0
autocmd FileType html,css,less,sass,scss,css EmmetInstall
" Complete emmet using TAB
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8  }  }
let $FZF_DEFAULT_OPTS='--reverse'

" Nerdtree configuration
" Toogle Nerdtree Ctrl+b
map <C-b> :NERDTreeToggle<CR>
" close VIM if NERDTree is the last window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" automatically open NERDTree when VIM is opened without files
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif



" Create Copy and Paste - the known way
" https://www.youtube.com/watch?v=E_rbfQqrm7g
"vnoremap <C-c> "+y
"map <C-v> "+p
"vnoremap <C-C> "*y :let @+=@*<CR>



" It makes vim work like every other multiple-file editor on the planet. You can have edited buffers that aren't visible in a window somewhere.
set hidden
set nocompatible
set encoding=utf-8
set showcmd
set splitbelow splitright
set number
"set relativenumber
autocmd BufNewFile,BufRead *.md set linebreak
set showmatch
set so=999
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4 softtabstop=4 expandtab
set smartindent
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set path+=**
set wildmenu
filetype plugin on
syntax on
"colorscheme wal


" set backspace=indent,eol,start	# Backspace behaviour
" set spell
" set visualbell
" set showbreak=+++
" set textwidth=100













" Plugin Settings


"Activate :Goyo
map <leader>g :Goyo<CR>

" Goyo & Limelight
" set Goyo colors (https://jonasjacek.github.io/colors/)
let g:limelight_conceal_ctermfg = 240

" auto enable Limelight in case of Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!



" Auto-commands
" start .md (Markdown) files always with Goyo enabled
" TODO: somehow broken -- needs fix
" autocmd! Filetype markdown :Goyo


" enable auto-save in .md (Markdown) files
autocmd Filetype markdown let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI"]

let g:airline#extensions#tabline#enabled = 1

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256



" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
