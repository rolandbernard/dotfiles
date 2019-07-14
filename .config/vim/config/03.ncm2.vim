
if has("nvim")
	" enable ncm2 for all buffers
	autocmd BufEnter * call ncm2#enable_for_buffer()

	" IMPORTANT: :help Ncm2PopupOpen for more information
	set completeopt=noinsert,menuone,noselect

	" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
	" found' messages
	set shortmess+=c

	" When the <Enter> key is pressed while the popup menu is visible, it only
	" hides the menu. Use this mapping to close the menu and also start a new
	" line.
	"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

	" Use <TAB> to select the popup menu:
	inoremap <expr> <Tab> (pumvisible() ? "\<C-n>" : "\<Tab>")
	inoremap <expr> <S-Tab> (pumvisible() ? "\<C-p>" : "\<S-Tab>")

	" Press enter key to trigger snippet expansion
	" The parameters are the same as `:help feedkeys()`
	inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')



	" c-j c-k for moving in snippet
	let g:UltiSnipsExpandTrigger		= "<C-0>"
	let g:UltiSnipsJumpForwardTrigger	= "<Tab>"
	let g:UltiSnipsJumpBackwardTrigger	= "<S-Tab>"
	let g:UltiSnipsRemoveSelectModeMappings = 0
endif
