
if !exists('g:vscode')
    if has('nvim')
lua << EOF
require('barbar').setup({
  auto_hide = true,
  animation = false,
  icons = {current = {filetype = {enabled = false}}}
})
EOF
    else
        let g:bufferline_active_buffer_left = '['
        let g:bufferline_active_buffer_right = ']'

        let g:bufferline_show_bufnr = 0
        let g:bufferline_pathshorten = 0
    endif

    nmap <silent> <C-Left> :BufferPrevious<CR>
    nmap <silent> <C-Right> :BufferNext<CR>
    nmap <silent> <C-x> :BufferClose<CR>
endif

