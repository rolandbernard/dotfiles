
if exists('g:vscode')

    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine

else

    nmap <silent> <C-s> :w<CR>
    imap <silent> <C-s> <C-o>:w<CR>
    vmap <silent> <C-s> <Esc>:w<CR>gv

    nmap <silent> <C-Left> :bprev<CR>
    nmap <silent> <C-Right> :bnext<CR>
    nmap <silent> <C-x> :bp<bar>vsp<bar>bn<bar>w<bar>bd<CR>

    nmap <silent> <S-Up> :wincmd k<CR>
    nmap <silent> <S-Down> :wincmd j<CR>
    nmap <silent> <S-Left> :wincmd h<CR>
    nmap <silent> <S-Right> :wincmd l<CR>
    nmap <silent> <C-n> :cn<CR>
    nmap <silent> <C-S-n> :cp<CR>

    nmap <silent> ,, :qa<CR>

    vmap <silent> <C-x> d
    vmap <silent> <C-c> y
    vmap <silent> <C-v> p

    nmap <silent> <S-Left> :TmuxNavigateLeft<cr>
    nmap <silent> <S-Down> :TmuxNavigateDown<cr>
    nmap <silent> <S-Up> :TmuxNavigateUp<cr>
    nmap <silent> <S-Right> :TmuxNavigateRight<cr>
    nmap <silent> <C-\> :TmuxNavigatePrevious<cr>
    
    tmap <silent> <ESC> <C-\><C-n>
    tmap <silent> <C-Left> <C-\><C-n>:bprev<CR>
    tmap <silent> <C-Right> <C-\><C-n>:bnext<CR>
    tmap <silent> <S-Up> <C-\><C-n>:wincmd k<CR>
    tmap <silent> <S-Down> <C-\><C-n>:wincmd j<CR>
    tmap <silent> <S-Left> <C-\><C-n>:wincmd h<CR>
    tmap <silent> <S-Right> <C-\><C-n>:wincmd l<CR>

    tmap <LeftRelease> <Nop>

endif

