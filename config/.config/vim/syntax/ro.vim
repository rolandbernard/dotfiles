" Vim syntax file
" Language: Ro 0.1
" Maintainer: Roland Bernard
" Latest Revision: 01.01.2019

if exists("b:current_syntax")
  finish
endif

syntax match roIdentifier "[_a-zA-Z][_a-zA-Z0-9]*"

highlight link roIdentifier Identifier

syntax keyword roConditional if else match
syntax keyword roRepeat for in loop break continue
syntax keyword roStorageClass const volatile extern simple
syntax keyword roStructure fn
syntax keyword roStatement return typeof defer
syntax keyword roKeyword import export as from using

highlight link roConditional Conditional
highlight link roRepeat Repeat
highlight link roStorageClass StorageClass
highlight link roStructure Structure
highlight link roStatement Statement
highlight link roKeyword Keyword

syntax match roOperator "&&"
syntax match roOperator "||"
syntax match roOperator "=="
syntax match roOperator ">="
syntax match roOperator "<="
syntax match roOperator ">"
syntax match roOperator "<"
syntax match roOperator "|"
syntax match roOperator "\^"
syntax match roOperator "&"
syntax match roOperator ">>"
syntax match roOperator "<<"
syntax match roOperator "+"
syntax match roOperator "-"
syntax match roOperator "\*"
syntax match roOperator "\/"
syntax match roOperator "%"
syntax match roOperator "\~"
syntax match roOperator "!"
syntax match roOperator "\.\."
syntax match roOperator "++"
syntax match roOperator "--"
syntax match roOperator "->"
syntax match roOperator "=>"
syntax match roOperator "~>"

highlight link roOperator Operator

syntax match roDelimiter "\."
syntax match roDelimiter ","
syntax match roDelimiter ";"
syntax match roDelimiter ":"
syntax match roDelimiter "::"
syntax match roDelimiter "("
syntax match roDelimiter ")"
syntax match roDelimiter "{"
syntax match roDelimiter "}"
syntax match roDelimiter "\["
syntax match roDelimiter "\]"

highlight link roDelimiter Delimiter

syntax match roAssignment ":="
syntax match roAssignment "="
syntax match roAssignment "+="
syntax match roAssignment "-="
syntax match roAssignment "\*="
syntax match roAssignment "\/="
syntax match roAssignment "%="
syntax match roAssignment "|="
syntax match roAssignment "&="
syntax match roAssignment "\^="
syntax match roAssignment "<<="
syntax match roAssignment ">>="

highlight link roAssignment Statement

syntax keyword roTodo contained TODO FIXME XXX
syntax match roLineComment "\/\/.\{-}$" contains=roTodo
syntax region roRangeComment start="\/\*" end="\*\/" fold contains=roRangeComment,roTodo

highlight link roTodo Todo
highlight link roLineComment Comment
highlight link roRangeComment Comment

syntax match roCustomOperator "`[^`]\+`"

highlight link roCustomOperator Operator

syntax region roBlock start="{" end="}" fold transparent

syntax match roUndefined "--"

highlight link roUndefined Constant

syntax keyword roBoolConstant true false
syntax match roUnderscore contained "[_]"
syntax match roIntegerConstant "0x[0-9a-fA-F_]\+\|0o[0-7_]\+\|0d[0-9_]\+\|0b[01_]\+\|\d[0-9_]*" contains=roUnderscore
syntax match roFloatConstant "\(\d[0-9_]*\.[0-9_]*\|\.[0-9_]\+\)\(e[+-]\=\d[0-9_]*\)\=" contains=roUnderscore
syntax match roEscapeSequence contained "\\[\\"'abtnvfre]\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}"
syntax region roStringConstant start=+"+  skip=+\\"+  end=+"+ contains=roEscapeSequence
syntax match roCharConstant "\'[^\\']\'"
syntax match roCharConstant "\'\(\\[\\'"abtnvfre]\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}\)\'" contains=roEscapeSequence

highlight link roBoolConstant Boolean
highlight link roIntegerConstant Number
highlight link roFloatConstant Float
highlight link roEscapeSequence SpecialChar
highlight link roUnderscore SpecialChar
highlight link roStringConstant String
highlight link roCharConstant Character

syntax match roLabel "\'[_a-zA-Z][_a-zA-Z0-9]*"

highlight link roLabel Label

