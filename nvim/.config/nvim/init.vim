if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    echo "Downloading VIM/NeoVIM Plugin Manager..."
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" Plugins Managed
call plug#begin('~/.local/share/nvim/site/autoload/')

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

source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/mappings.vim
"source ~/.config/nvim/plugins/plugins.vim
