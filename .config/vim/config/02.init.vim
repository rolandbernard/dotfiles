" Enable syntax highlighting
syntax on

set wrap!

" Enable line/column info at bottom
set ruler
set cursorline " highlights current line

set scrolloff=10

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

" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

set background=dark
colorscheme NeoSolarized

" colorscheme minimalist

" airline
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" ALE
let g:ale_enabled = 0
let g:ale_completion_enabled = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_save = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_c_parse_compile_commands = 1
let g:ale_c_build_dir_names = ['build']

" terminal settings
" autocmd BufWinEnter,WinEnter term://* startinsert
" autocmd BufLeave term://* stopinsert

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list!

" remember
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
" let &t_ut=''

let g:hardtime_default_on = 1

set ignorecase
set smartcase

set undofile

let g:omni_sql_no_default_maps = 1
