
if !exists('g:vscode')
    if has('nvim')

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        disable = { 'verilog' }
    },
    indent = {
        enable = false,
        disable = { }
    },
    playground = {
        enable = true,
        disable = { },
        updatetime = 25,
        persist_queries = false
    }
}
EOF

    endif
endif

