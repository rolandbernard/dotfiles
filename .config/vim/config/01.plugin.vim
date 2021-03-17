
call plug#begin('~/.config/vim/plugged')

if !exists('g:vscode')

    Plug 'lervag/vimtex'
    Plug 'itchyny/lightline.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'bling/vim-bufferline'
    Plug 'Shirk/vim-gas'
    Plug 'vim-scripts/restore_view.vim'
    Plug 'dpelle/vim-LanguageTool'
    Plug 'preservim/nerdtree'
    Plug 'jackguo380/vim-lsp-cxx-highlight'

if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

endif

Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'
Plug 'roxma/nvim-yarp'

call plug#end()

