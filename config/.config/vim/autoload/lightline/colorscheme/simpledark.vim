
let s:foreground = [ '#d4d4d4', 0 ]
let s:background = [ '#1e1e1e', 0 ]
let s:yellow = [ '#e5c07b', 0 ]
let s:purple = [ '#c586c0', 0 ]
let s:red = [ '#ff5967', 0 ]
let s:blue = [ '#345d7f', 0 ]
let s:green = [ '#98c379', 0 ]
let s:grey = [ '#bbbbbb', 0 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:foreground, s:background ], [ s:green, s:background ] ]
let s:p.normal.right = [ [ s:purple, s:background ], [ s:green, s:background ] ]
let s:p.inactive.right = [ [ s:grey, s:background ], [ s:grey, s:background ] ]
let s:p.inactive.left =  [ [ s:grey, s:background ], [ s:grey, s:background ] ]
let s:p.insert.left = [ [ s:background, s:green ], [ s:green, s:background ] ]
let s:p.replace.left = [ [ s:red, s:background ], [ s:red, s:background ] ]
let s:p.visual.left = [ [ s:background, s:purple ], [ s:purple, s:background ] ]
let s:p.normal.middle = [ [ s:foreground, s:background ] ]
let s:p.inactive.middle = [ [ s:grey, s:background ] ]
let s:p.tabline.left = [ [ s:blue, s:grey ] ]
let s:p.tabline.tabsel = [ [ s:foreground, s:background ] ]
let s:p.tabline.middle = [ [ s:foreground, s:background ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:background, s:red ] ]
let s:p.normal.warning = [ [ s:background, s:yellow ] ]

let g:lightline#colorscheme#simpledark#palette = lightline#colorscheme#flatten(s:p)

