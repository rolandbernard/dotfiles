
" Enable syntax highlighting
syntax on

" Enable line numbers
set nu

set wrap!

" Enable line/column info at bottom
set ruler
set cursorline " highlights current line

set scrolloff=10

" Autoindentation
set ai
filetype indent plugin on

" Copies using system clipboard
set clipboard+=unnamedplus

" enable mouse support
set mouse=a mousemodel=popup

" relative line numbers
" Sets relative line numbers in normal mode, absolute line numbers in insert
" mode
set number
set relativenumber

" Set colors in terminal
" Solarized, dark, with true color support
set termguicolors
set background=dark
colorscheme NeoSolarized

let g:airline_theme='solarized'

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" terminal settings
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

set foldmethod=syntax
set foldlevelstart=99

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview


