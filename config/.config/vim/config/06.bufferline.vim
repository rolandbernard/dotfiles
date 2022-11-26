
if !exists('g:vscode')
    if has('nvim')
        let bufferline = get(g:, 'bufferline', {})
        let bufferline.icons = v:false
        let bufferline.animation = v:false
        let bufferline.auto_hide = v:true

        nmap <silent> <C-Left> :BufferPrevious<CR>
        nmap <silent> <C-Right> :BufferNext<CR>
        nmap <silent> <C-x> :BufferClose<CR>
    else
        let g:bufferline_active_buffer_left = '['
        let g:bufferline_active_buffer_right = ']'

        let g:bufferline_show_bufnr = 0
        let g:bufferline_pathshorten = 0
    endif
endif

