
if !exists('g:vscode')

    imap <silent> <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    imap <silent> <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

    let g:coc_global_extensions = [
    \   'coc-angular',
    \   'coc-calc',
    \   'coc-clangd',
    \   'coc-cmake',
    \   'coc-css',
    \   'coc-cssmodules',
    \   'coc-emmet',
    \   'coc-explorer',
    \   'coc-floatinput',
    \   'coc-git',
    \   'coc-go',
    \   'coc-html',
    \   'coc-html-css-support',
    \   'coc-java',
    \   'coc-json',
    \   'coc-lists',
    \   'coc-pairs',
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

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    set updatetime=300

    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <silent> K :call CocAction('doHover')<CR>
    nmap <silent> <C-t> :CocCommand explorer --focus<CR>
    nmap <silent> <RightMouse> <LeftMouse>:call CocAction('doHover')<CR>
    imap <silent> <RightMouse> <LeftMouse>:call CocAction('doHover')<CR>
    nmap <silent> rn <Plug>(coc-rename)
    imap <silent><expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()

    if @% == ""
        autocmd VimEnter * :CocCommand explorer
    endif

endif

