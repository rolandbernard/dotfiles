
if !exists('g:vscode')

    imap <silent> <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    imap <silent> <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    let g:coc_global_extensions = [
    \   'coc-angular',
    \   'coc-clangd',
    \   'coc-css',
    \   'coc-emmet',
    \   'coc-git',
    \   'coc-go',
    \   'coc-gocode',
    \   'coc-html',
    \   'coc-java',
    \   'coc-json',
    \   'coc-lists',
    \   'coc-pairs',
    \   'coc-phpls',
    \   'coc-python',
    \   'coc-rls',
    \   'coc-snippets',
    \   'coc-svg',
    \   'coc-syntax',
    \   'coc-tsserver',
    \   'coc-vimlsp',
    \   'coc-vimtex',
    \   'coc-word',
    \   'coc-xml',
    \   'coc-yank',
    \   'coc-explorer',
    \   'coc-git',
    \   'coc-floatinput',
    \ ]

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    set updatetime=300

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> K :call CocAction('doHover')<CR>
    nmap <silent> <C-t> :CocCommand explorer<CR>
    nmap <silent> <RightMouse> <LeftMouse>:call CocAction('doHover')<CR>
    imap <silent> <RightMouse> <LeftMouse>:call CocAction('doHover')<CR>
    nmap <silent> rn <Plug>(coc-rename)
    imap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()
    augroup ProjectDrawer
        autocmd!
        autocmd VimEnter * :CocCommand explorer --no-focus
    augroup END

endif

