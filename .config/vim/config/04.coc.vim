
if !exists('g:vscode')

    inoremap <silent> <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <silent> <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
                \       'coc-rls',
                \       'coc-python',
                \       'coc-emmet',
                \       'coc-git',
                \       'coc-svg',
                \       'coc-xml',
                \       'coc-angular',
                \       'coc-ultisnips',
                \       'coc-java'
                \   ]

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    set updatetime=300

    nnoremap <silent> gd <Plug>(coc-definition)
    nnoremap <silent> gy <Plug>(coc-type-definition)
    nnoremap <silent> gi <Plug>(coc-implementation)
    nnoremap <silent> gr <Plug>(coc-references)
    nnoremap <silent> K :call CocAction('doHover')<CR>
    nnoremap <silent> rn <Plug>(coc-rename)
    inoremap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()

endif

