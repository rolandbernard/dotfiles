
if !exists('g:vscode')

    let g:coc_global_extensions = [
    \   'coc-angular',
    \   'coc-calc',
    \   'coc-clangd',
    \   'coc-cmake',
    \   'coc-css',
    \   'coc-cssmodules',
    \   'coc-diagnostic',
    \   'coc-emmet',
    \   'coc-explorer',
    \   'coc-floatinput',
    \   'coc-git',
    \   'coc-go',
    \   'coc-html',
    \   'coc-html-css-support',
    \   'coc-java',
    \   'coc-java-debug',
    \   'coc-json',
    \   'coc-lists',
    \   'coc-lit-html',
    \   'coc-phpls',
    \   'coc-pyright',
    \   'coc-rls',
    \   'coc-sh',
    \   'coc-snippets',
    \   'coc-spell-checker',
    \   'coc-sql',
    \   'coc-svg',
    \   'coc-syntax',
    \   'coc-toml',
    \   'coc-tsserver',
    \   'coc-vimlsp',
    \   'coc-vimtex',
    \   'coc-word',
    \   'coc-xml',
    \   'coc-yaml',
    \   'coc-yank',
    \ ]
    " \   'coc-tabnine',
    " \   'coc-pairs',

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    nmap <silent> rn <Plug>(coc-rename)

    xmap <silent> gf <Plug>(coc-format-selected)
    nmap <silent> gf <Plug>(coc-format-selected)
    xmap <silent> ga <Plug>(coc-codeaction-selected)
    nmap <silent> ga <Plug>(coc-codeaction-selected)

    nmap <silent> gA  <Plug>(coc-codeaction)
    nmap <silent> gF  <Plug>(coc-fix-current)

    xmap if <Plug>(coc-funcobj-i)
    omap if <Plug>(coc-funcobj-i)
    xmap af <Plug>(coc-funcobj-a)
    omap af <Plug>(coc-funcobj-a)
    xmap ic <Plug>(coc-classobj-i)
    omap ic <Plug>(coc-classobj-i)
    xmap ac <Plug>(coc-classobj-a)
    omap ac <Plug>(coc-classobj-a)

    nmap <silent> K :silent! call CocAction('doHover')<CR>
    nmap <silent> <RightMouse> <LeftMouse>:silent! call CocAction('doHover')<CR>

    nmap <silent> <C-t> :CocCommand explorer<CR>

    imap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    imap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    imap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()
    if has('nvim')
        imap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()
    else
        imap <silent><expr> <c-@> pumvisible() ? coc#_select_confirm() : coc#refresh()
    endif

    autocmd CursorHold * silent call CocActionAsync('highlight')

endif

