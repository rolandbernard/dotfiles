
if exists('g:vscode')

    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine

else

    nnoremap <silent> <C-s> :w<CR>
    inoremap <silent> <C-s> <C-o>:w<CR>
    vnoremap <silent> <C-s> <Esc>:w<CR>gv

    nnoremap <silent> <C-Left> :bprev<CR>
    nnoremap <silent> <C-Right> :bnext<CR>
    nnoremap <silent> <C-x> :bp<bar>vsp<bar>bn<bar>w<bar>bd<CR>

    nnoremap <silent> <S-Up> :wincmd k<CR>
    nnoremap <silent> <S-Down> :wincmd j<CR>
    nnoremap <silent> <S-Left> :wincmd h<CR>
    nnoremap <silent> <S-Right> :wincmd l<CR>

    nnoremap <silent> <C-t> :NERDTreeToggle<CR>
    nnoremap <silent> , :qa<CR>

    tnoremap <silent> <ESC> <C-\><C-n>
    tnoremap <silent> <C-Left> <C-\><C-n>:bprev<CR>
    tnoremap <silent> <C-Right> <C-\><C-n>:bnext<CR>
    tnoremap <silent> <S-Up> <C-\><C-n>:wincmd k<CR>
    tnoremap <silent> <S-Down> <C-\><C-n>:wincmd j<CR>
    tnoremap <silent> <S-Left> <C-\><C-n>:wincmd h<CR>
    tnoremap <silent> <S-Right> <C-\><C-n>:wincmd l<CR>

    if has('nvim')
        nnoremap <silent> <C-c> :NERDTreeToggle<CR>:wincmd p<CR>:belowright split<CR>:resize 10<CR>:terminal<CR><ESC>:wincmd p<CR>
    endif

endif

