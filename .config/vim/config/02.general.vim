
syntax on

set number
set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4

set nowrap

set clipboard+=unnamedplus
set mouse=a mousemodel=popup

set termguicolors
set background=dark
colorscheme plastic

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list

set ignorecase
set smartcase

set autoindent
set smartindent

set undofile
set hidden

set nocursorline

set scrolloff=10

set signcolumn=yes

set foldmethod=syntax
set foldlevel=99

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview

let g:omni_sql_no_default_maps = 1
