
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

    nnoremap <silent> <S-Up> :wincmd k<CR>
    nnoremap <silent> <S-Down> :wincmd j<CR>
    nnoremap <silent> <S-Left> :wincmd h<CR>
    nnoremap <silent> <S-Right> :wincmd l<CR>

    nnoremap <C-t> :Lexplore<CR>
    nnoremap , :qa<CR>

    tnoremap <ESC> <C-\><C-n>

endif

