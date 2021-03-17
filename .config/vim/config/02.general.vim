
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
match Whitespace /\s/

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,space:·
set list

set ignorecase
set smartcase

set autoindent
set smartindent
set cindent
set cinoptions=j1,J1,+0,w0,m1,Ws,g0,:0,l1

set undofile
set hidden

set nocursorline

set scrolloff=10

set signcolumn=yes

set foldmethod=indent
set foldlevel=99

let g:omni_sql_no_default_maps = 1

let g:languagetool_jar = '/usr/share/java/languagetool/languagetool-commandline.jar'
let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'

let g:NERDTreeShowHidden=1

