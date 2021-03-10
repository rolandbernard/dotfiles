
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

if !exists('g:vscode')

  let g:netrw_liststyle = 3
  let g:netrw_banner = 0
  let g:netrw_browse_split = 4
  let g:netrw_winsize = 10
  let g:netrw_keepdir = 0
  let g:netrw_altv = 1

  augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :silent! Lexplore
    autocmd VimEnter * :silent! wincmd p
    autocmd VimEnter * :silent! belowright split
    autocmd VimEnter * :silent! resize 10
    autocmd VimEnter * :silent! terminal
    autocmd VimEnter * :silent! wincmd p
  augroup END

endif


