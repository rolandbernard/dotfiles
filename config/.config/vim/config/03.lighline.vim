
if !exists('g:vscode')

    let g:lightline = {
        \   'colorscheme': 'simpledark',
        \   'active': {
        \     'left':[
        \              [ 'mode', 'paste' ],
        \              [ 'gitbranch', 'readonly', 'relativepath', 'modified' ],
        \     ],
        \     'right': [
        \              [ 'lineinfo' ],
        \              [ 'percent' ],
        \              [ 'fileformat', 'fileencoding', 'filetype'],
        \              [ 'coc_status' ],
        \     ]
        \   },
        \   'component_function': {
        \       'gitbranch': 'FugitiveHead',
        \       'coc_status': 'CocStatus',
        \   },
        \ }

    set noshowmode

    function! CocStatus() abort
        let info = get(b:, 'coc_diagnostic_info', {})
        if empty(info) | return '' | endif
        let msgs = []
        if get(info, 'error', 0)
            call add(msgs, 'E' . info['error'])
        endif
        if get(info, 'warning', 0)
            call add(msgs, 'W' . info['warning'])
        endif
        return join(msgs, ' ')
    endfunction

endif

