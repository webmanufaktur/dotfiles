
" if ! filereadable(expand('$HOME/.config/nvim/autoload/plug.vim'))
" 	echo "Downloading junegunn/vim-plug to manage plugins..."
" 	silent !mkdir -p ~/.vim/autoload/
" 	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.vim/autoload/plug.vim
" 	autocmd VimEnter * PlugInstall
" endif


" Plugins Managed
call plug#begin()

    Plug 'tpope/vim-fugitive'
    Plug 'mhinz/vim-signify'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'lilydjwg/colorizer'
    Plug '907th/vim-auto-save'
    Plug 'preservim/nerdtree'
    "Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "Plug 'gorodinskiy/vim-coloresque'
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'PotatoesMaster/i3-vim-syntax'
    "Plug 'prettier/vim-prettier', {
           "\ 'do': 'yarn install',
           "\ 'for': ['javascript', 'sass', 'php', 'css', 'less', 'scss', 'json', 'html'] } 
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme onedark
set background=dark


