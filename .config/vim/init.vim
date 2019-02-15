
for f in split(glob('~/.config/vim/config/*.vim'), '\n')
	exe 'source' f
endfor
