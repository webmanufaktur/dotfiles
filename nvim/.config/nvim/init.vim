if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    echo "Downloading VIM/NeoVIM Plugin Manager..."
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" Plugins Managed
call plug#begin('~/.local/share/nvim/site/autoload/')

    " File / directory browser
    Plug 'preservim/nerdtree'

    " Airline... 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Theming
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    
    " show colors like #ff3300 inline
    Plug 'lilydjwg/colorizer'

    " i3 Syntax Highlighting
    Plug 'PotatoesMaster/i3-vim-syntax'

    " easy brackets, braces and parentheses
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'

    " Fuzzyfinder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Linter
    Plug 'dense-analysis/ale'
    Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'branch': 'release/1.x',
        \ 'for': [
        \ 'javascript',
        \ 'css',
        \ 'less',
        \ 'scss',
        \ 'json',
        \ 'markdown',
        \ 'php',
        \ 'html' ] }

    " File and folder icons in NerdTree
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'

    " Writing tools
    Plug 'junegunn/goyo.vim' " centered view / minimal writer
    Plug 'junegunn/limelight.vim' " line or paragraph focus
    Plug '907th/vim-auto-save' " auto save changes => settings.vim

    " unused Plugins
    Plug 'mattn/emmet-vim'
    "Plug 'vimwiki/vimwiki'
    "Plug 'gorodinskiy/vim-coloresque'
    
    " Git plugins
    " Plug 'tpope/vim-fugitive'
    " Plug 'mhinz/vim-signify'

call plug#end()

source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/keys/mappings.vim
"source ~/.config/nvim/plugins/plugins.vim
"
"
colorscheme onedark
