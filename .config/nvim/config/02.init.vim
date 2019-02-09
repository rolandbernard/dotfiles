" init.vim contains all of the initialization plugins for vim
" note that this has to be sourced second since dein needs to
" run its scripts first. This contains misc startup settings
" for vim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set synmaxcol=1024
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

" markdown file recognition
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" relative line numbers
" Sets relative line numbers in normal mode, absolute line numbers in insert
" mode
set number
set relativenumber

" use ripgreg instead of grep
set grepprg=rg\ --vimgrep

" python packages in venv
" let g:python_host_prog = '/home/roland/.virtualenvs/nvim2/bin/python'
" let g:python3_host_prog = '/home/roland/.virtualenvs/nvim3/bin/python'

" Set colors in terminal
" Solarized, dark, with true color support
set termguicolors
set background=dark
colorscheme NeoSolarized

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" crontab filetype tweak (the way vim normally saves files confuses crontab
" so this workaround allows for editing
au FileType crontab setlocal bkc=yes

" set hidden

" Disable completion where available from ALE
" (not worth creating a separate file just for a one-liner)
let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1

" terminal settings
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

set foldmethod=syntax
set foldlevelstart=99

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

