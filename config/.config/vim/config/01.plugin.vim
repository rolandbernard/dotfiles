
set nocompatible

call plug#begin('~/.config/vim/plugged')

if !exists('g:vscode')

    Plug 'mg979/vim-visual-multi'
    Plug 'lervag/vimtex'
    Plug 'itchyny/lightline.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'master',  'do': 'yarn install --frozen-lockfile'}
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'Shirk/vim-gas'
    Plug 'vim-scripts/restore_view.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'lambdalisue/suda.vim'
    Plug 'kylelaker/riscv.vim'
    Plug 'puremourning/vimspector'

    if has('nvim')
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'nvim-treesitter/playground'
        Plug 'romgrk/barbar.nvim'
    else
        Plug 'bling/vim-bufferline'
    endif

endif

Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'
Plug 'roxma/nvim-yarp'

call plug#end()

