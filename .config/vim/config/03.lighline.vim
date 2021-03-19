
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
                \              [ 'blame' ],
                \     ]
                \   },
                \   'component_function': {
                \       'gitbranch': 'fugitive#head',
                \       'blame': 'LightlineGitBlame',
                \       'filetype': 'MyFiletype',
                \       'fileformat': 'MyFileformat',
                \   },
                \ }

    function! MyFiletype()
        return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
    endfunction
      
    function! MyFileformat()
        return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
    endfunction

    function! LightlineGitBlame() abort
        let blame = get(b:, 'coc_git_blame', '')
        return winwidth(0) > 120 ? blame : ''
    endfunction

    set noshowmode

endif

