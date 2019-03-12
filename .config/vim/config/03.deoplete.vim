
" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set completeopt-=preview

