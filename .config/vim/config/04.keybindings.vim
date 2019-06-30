" make
"nnoremap mm :!make<CR>
"nnoremap mr :!make;make run<CR>
"nnoremap mc :!make clean<CR><CR>

" save using <C-s>
nnoremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>
vnoremap <C-s> <Esc>:w<CR>gv

" Delete trailing whitespace with F5
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
map <C-t> :NERDTreeToggle<CR>

" ALE
nmap <F8> <Plug>(ale_fix)

" fzy
if has('nvim')
	nnoremap <C-p> :FuzzyOpen<CR>
	nnoremap <C-g> :FuzzyGrep<CR>
endif

" neovim visor
let g:neovim_visor_key = '<C-a>'

" change working directory to where the file in the buffer is located
" if user types `,cd`
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" <ESC> exits in terminal mode
tnoremap <ESC> <C-\><C-n><C-w><C-p>

