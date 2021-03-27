
syntax on

set number
set relativenumber

set nowrap

set clipboard=unnamed,unnamedplus
set mouse=a mousemodel=popup
set viewoptions=cursor,folds,slash,unix

set termguicolors
set background=dark
colorscheme plastic
match Whitespace /\s/

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:·
set list

set ignorecase
set smartcase

set autoindent
set smartindent
set cindent
set cinkeys=0{,0},0),0],:,0#,!^F,o,O,e,!<Tab>
set cinoptions=j1,J1,+0,w0,m1,Ws,g0,:0,l1,(s

set undofile
set hidden

set cursorline

set scrolloff=10

set signcolumn=yes

set foldmethod=indent
set foldlevelstart=99

let g:omni_sql_no_default_maps = 1

let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'

let g:tmux_navigator_no_mappings = 1

autocmd BufEnter term://* startinsert
autocmd BufLeave * stopinsert

