
call plug#begin('~/.config/vim/plugged')

if !exists('g:vscode')

    Plug 'itchyny/lightline.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'bling/vim-bufferline'
    Plug 'Shirk/vim-gas'
    Plug 'vim-latex/vim-latex'
    Plug 'vim-scripts/restore_view.vim'
    Plug 'dpelle/vim-LanguageTool'

endif

Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'
Plug 'roxma/nvim-yarp'

call plug#end()

