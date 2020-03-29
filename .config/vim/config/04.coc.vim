
if !exists('g:vscode')

    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    let g:coc_global_extensions = [
                \       'coc-syntax',
                \       'coc-gocode',
                \       'coc-go',
                \       'coc-clangd',
                \       'coc-vimlsp',
                \       'coc-yank',
                \       'coc-html',
                \       'coc-json',
                \       'coc-css',
                \       'coc-tsserver',
                \       'coc-phpls',
                \       'coc-java',
                \       'coc-rls',
                \       'coc-python',
                \       'coc-emmet',
                \       'coc-git',
                \       'coc-svg',
                \       'coc-xml',
                \       'coc-angular',
                \       'coc-ultisnips'
                \   ]

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    set updatetime=300

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nnoremap <silent> K :call CocAction('doHover')<CR>
    nmap rn <Plug>(coc-rename)
    inoremap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()

endif

