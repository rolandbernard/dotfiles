
if !exists('g:vscode')
    if has('nvim')

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        disable = { 'verilog' }
    },
    playground = {
        enable = true,
        disable = { },
        updatetime = 25,
        persist_queries = false
    }
}
EOF

    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()

    endif
endif

