
if !exists('g:vscode')

    let g:coc_global_extensions = [
    \   'coc-calc',
    \   'coc-clangd',
    \   'coc-cmake',
    \   'coc-css',
    \   'coc-cssmodules',
    \   'coc-deno',
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
    \   'coc-rust-analyzer',
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
    \   'coc-xml',
    \   'coc-yaml',
    \   'coc-yank',
    \   'coc-ltex',
    \ ]

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

    imap <silent><expr> <Tab> coc#pum#visible() ? "\<C-n>" : "\<Tab>"
    imap <silent><expr> <S-Tab> coc#pum#visible() ? "\<C-p>" : "\<S-Tab>"
    imap <silent><expr> <c-space> coc#pum#visible() ? coc#_select_confirm() : coc#refresh()
    if has('nvim')
        imap <silent><expr> <c-space> coc#pum#visible() ? coc#_select_confirm() : coc#refresh()
    else
        imap <silent><expr> <c-@> coc#pum#visible() ? coc#_select_confirm() : coc#refresh()
    endif

    autocmd CursorHold * silent call CocActionAsync('highlight')

else

    nmap <silent> [g <Cmd>call VSCodeNotify("editor.action.marker.prevInFiles")<CR>
    nmap <silent> ]g <Cmd>call VSCodeNotify("editor.action.marker.nextInFiles")<CR>

    nmap <silent> gd <Cmd>call VSCodeNotify("editor.action.revealDefinition")<CR>
    nmap <silent> gy <Cmd>call VSCodeNotify("editor.action.goToTypeDefinition")<CR>
    nmap <silent> gi <Cmd>call VSCodeNotify("editor.action.goToImplementation")<CR>
    nmap <silent> gr <Cmd>call VSCodeNotify("editor.action.goToReferences")<CR>

    nmap <silent> rn <Cmd>call VSCodeNotify("editor.action.rename")<CR>

    xmap <silent> gf <Cmd>call VSCodeNotify("editor.action.formatSelection")<CR>
    nmap <silent> gf <Cmd>call VSCodeNotify("editor.action.formatSelection")<CR>
    xmap <silent> ga <Cmd>call VSCodeNotify("editor.action.quickFix")<CR>
    nmap <silent> ga <Cmd>call VSCodeNotify("editor.action.quickFix")<CR>

endif

