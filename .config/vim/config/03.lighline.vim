
if !exists('g:vscode')

    let g:lightline = {
        \   'colorscheme': 'plastic',
        \   'active': {
        \     'left':[
        \              [ 'mode', 'paste' ],
        \              [ 'gitbranch', 'readonly', 'relativepath', 'modified' ],
        \     ],
        \     'right': [
        \              [ 'lineinfo' ],
        \              [ 'percent' ],
        \              [ 'fileformat', 'fileencoding', 'filetype'],
        \     ]
        \   },
        \   'component_function': {
        \       'gitbranch': 'fugitive#head',
        \   },
        \ }

    set noshowmode

endif

