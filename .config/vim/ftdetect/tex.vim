
autocmd FileType tex nmap <C-l> :Latexmk<CR>
autocmd FileType tex imap <C-l> <C-o>:Latexmk<CR>
autocmd FileType tex vmap <C-l> <Esc>:w<CR>:Latexmk<CR>gv

