"let &rtp = '~/.config/nvim,'.&rtp

" set leader key
let g:mapleader = " "

syntax enable                           " Enables syntax highlighing

filetype plugin on
set hidden                              " Required to keep multiple buffers open multiple buffers
set showcmd
set nocompatible
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
"set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set shiftwidth=4 softtabstop=4 expandtab
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>  

set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
"set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always
                                        "be the same as your working directory

set so=999
set hlsearch
set smartcase
set ignorecase
set incsearch

set spelllang=de

" set textwidth=80

" enable auto-save in .md (Markdown) files
autocmd FileType markdown set linebreak
autocmd FileType markdown set wrap
autocmd Filetype markdown let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI"]
"

" augroup Markdown 
" Files with extension .md are processed as Ruby code
" autocmd!
" autocmd BufReadPre,FileReadPre *.md set ft=markdown linebreak
" augroup END



let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_powerline_fonts = 1

hi Comment cterm=italic


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm
"alternatively you can run :source $MYVIMRC


let g:webdevicons_conceal_nerdtree_brackets = 1

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8   }   }
let $FZF_DEFAULT_OPTS='--reverse'

" Nerdtree configuration
map <C-b> :NERDTreeToggle<CR>




" Emmet
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_install_global = 0
autocmd FileType html,css,less,sass,scss,javascript EmmetInstall

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"let g:ale_fixers={
"  \'javascript': ['prettier'],
"  \'json': ['prettier'],
"  \'php': ['prettier'],
"\}
"
"let g:ale_fix_on_save = 1
"
"
" FOLDING
"
autocmd BufWinLeave *.* silent mkview 
autocmd BufWinEnter *.* silent loadview  
