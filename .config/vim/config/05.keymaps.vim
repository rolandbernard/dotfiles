
if exists('g:vscode')

    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine

else

    nnoremap <C-s> :w<CR>
    inoremap <C-s> <C-o>:w<CR>
    vnoremap <C-s> <Esc>:w<CR>gv

    nnoremap <silent> <C-Left> :bprev<CR>
    nnoremap <silent> <C-Right> :bnext<CR>

endif

