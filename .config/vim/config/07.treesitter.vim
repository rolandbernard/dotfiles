
if has('nvim')
lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        disable = {  },
    },
}
EOF
endif

