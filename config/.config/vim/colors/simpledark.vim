
scriptencoding utf-8

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'simpledark'

fun! <sid>hi(group, fg, bg, attr, sp)
    if !empty(a:fg)
        exec "hi " . a:group . " guifg=" . a:fg
    endif
    if !empty(a:bg)
        exec "hi " . a:group . " guibg=" . a:bg
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
    if !empty(a:sp)
        exec "hi " . a:group . " guisp=" . a:sp
    endif
endfun

let s:foreground = '#d4d4d4'
let s:background = '#1e1e1e'
let s:backgroundline = '#232323'
let s:red = '#ff5967'
let s:green = '#98c379'
let s:yellow = '#e5c07b'
let s:darkBlue = '#365c7d'
let s:comment = '#84838b'
let s:preproc = '#569cd6'
let s:numeric = '#b5cea8'
let s:escape = '#d7ba7d'
let s:variable = '#9cdcfe'
let s:string = '#ce9178'
let s:function = '#dcdcaa'
let s:type = '#4ec9b0'
let s:control = '#c586c0'
let s:constant = '#4fc1ff'
let s:label = '#c8c8c8'
let s:none = 'NONE'
let s:punctuation = '#bbbbbb'
let s:dark = '#353a3f'
let s:black = '#000000'

call <sid>hi('Normal', s:foreground, s:background, 'none', {})

" UI
call <sid>hi('Cursor', s:none, s:none, 'inverse', {})
hi link lCursor Cursor
hi link CursorIM Cursor
call <sid>hi('CursorLine', s:none, s:backgroundline, 'none', {})
call <sid>hi('EndOfBuffer', s:function, s:none, 'none', {})
call <sid>hi('Conceal', s:darkBlue, s:none, 'none', {})
call <sid>hi('CursorColumn', s:none, s:background, 'none', {})
call <sid>hi('ColorColumn', s:none, s:punctuation, 'none', {})
call <sid>hi('FoldColumn', s:punctuation, s:background, 'none', {})
call <sid>hi('SignColumn', s:none, s:background, 'none', {})
call <sid>hi('VertSplit', s:punctuation, s:background, 'none', {})
call <sid>hi('LineNr', s:punctuation, s:background, 'none', {})
call <sid>hi('CursorLineNr', s:punctuation, s:background, 'none', {})

call <sid>hi('DiffAdd', s:green, s:background, 'none', {})
call <sid>hi('DiffChange', s:yellow, s:background, 'none', {})
call <sid>hi('DiffDelete', s:red, s:background, 'none', {})
call <sid>hi('DiffText', s:punctuation, s:background, 'none', {})

call <sid>hi('ErrorMsg', s:red, s:background, 'bold', {})
call <sid>hi('ModeMsg', s:yellow, s:none, 'bold', {})
call <sid>hi('MoreMsg', s:preproc, s:none, 'bold', {})
call <sid>hi('WarningMsg', s:function, s:none, 'italic', {})
call <sid>hi('Noise', s:punctuation, s:none, 'none', {})
call <sid>hi('NonText', s:function, s:none, 'none', {})
call <sid>hi('Folded', s:punctuation, s:none, 'none', {})
call <sid>hi('IncSearch', s:yellow, s:black, 'none', {})
call <sid>hi('Search', s:yellow, s:background, 'reverse', {})

call <sid>hi('Pmenu', s:none, s:black, 'none', {})
call <sid>hi('PmenuSel', s:black, s:foreground, 'none', {})

call <sid>hi('Question', s:foreground, s:background, 'bold', {})
call <sid>hi('MatchParen', s:darkBlue, s:none, 'bold', {})
call <sid>hi('Directory', s:foreground, s:background, 'bold', {})
call <sid>hi('QuickFixLine', s:black, s:yellow, 'none', {})

call <sid>hi('SpecialKey', s:control, s:none, 'none', {})
call <sid>hi('SpellBad', s:red, s:none, 'undercurl', s:red)
call <sid>hi('SpellCap', s:none, s:none, 'undercurl', {})
call <sid>hi('SpellLocal', s:none, s:none, 'undercurl', {})
call <sid>hi('SpellRare', s:none, s:none, 'undercurl', {})

call <sid>hi('StatusLine', s:foreground, s:background, 'italic', {})
call <sid>hi('StatusLineNC', s:foreground, s:background, 'none', {})
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

call <sid>hi('TabLine', s:foreground, s:black, 'none', {})
hi link TabLineFill TabLine
call <sid>hi('TabLineSel', s:function, s:black, 'none', {})

call <sid>hi('Title', s:foreground, s:none, 'none', {})
call <sid>hi('Visual', s:black, s:foreground, 'none', {})
hi link VisualNOS Visual
call <sid>hi('TabLine', s:foreground, s:black, 'none', {})
call <sid>hi('WildMenu', s:black, s:foreground, 'bold', {})
call <sid>hi('Whitespace', s:dark, s:none, 'none', {})

" Syntax
call <sid>hi('Comment', s:comment, s:none, 'italic', {})

call <sid>hi('Constant', s:constant, s:none, 'none', {})
call <sid>hi('Number', s:numeric, s:none, 'none', {})
call <sid>hi('String', s:string, s:none, 'none', {})
hi link Character Constant
hi link Boolean Constant
hi link Float Number

call <sid>hi('Identifier', s:foreground, s:none, 'none', {})
call <sid>hi('Function', s:function, s:none, 'none', {})

call <sid>hi('Statement', s:control, s:none, 'none', {})
hi link Conditional Statement

call <sid>hi('PreProc', s:preproc, s:none, 'none', {})

call <sid>hi('Type', s:type, s:none, 'none', {})

call <sid>hi('Special', s:punctuation, s:none, 'none', {})

call <sid>hi('Underlined', s:preproc, s:none, 'underline', {})

call <sid>hi('Ignore', s:none, s:none, 'none', {})

call <sid>hi('Error', s:red, s:black, 'undercurl', {})

call <sid>hi('Todo', s:preproc, s:none, 'italic', {})

call <sid>hi('CocErrorHighlight', s:none, s:none, 'underline', s:red)

call <sid>hi('CocWarningHighlight', s:none, s:none, 'underline', s:yellow)

" C++
hi link LspCxxHlGroupEnumConstant Constant
hi link LspCxxHlGroupNamespace Identifier
hi link LspCxxHlGroupMemberVariable Identifier

