
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim'
if !has('nvim')
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/vimshell'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete-clangx'
Plug 'zchee/deoplete-asm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'scrooloose/nerdtree'
Plug 'icymind/NeoSolarized'
Plug 'w0rp/ale'
Plug 'cloudhead/neovim-fuzzy'
Plug 'junegunn/fzf'
Plug 'alaric/neovim-visor'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'ternjs/tern_for_vim'
"Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'Shougo/neco-syntax'
Plug 'carlitux/deoplete-ternjs'
Plug 'fidian/hexmode'
"Plug 'takac/vim-hardtime'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-repeat'

call plug#end()

