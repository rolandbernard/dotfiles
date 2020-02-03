" Vim syntax file
" Language: Ro 0.1
" Maintainer: Roland Bernard
" Latest Revision: 01.01.2019

if exists("b:current_syntax")
  finish
endif

syntax match roIdentifier "[_a-zA-Z][_a-zA-Z0-9]*"

highlight link roIdentifier Identifier

syntax keyword roConditional if else
syntax keyword roRepeat for
syntax keyword roStorageClass const volatile extern
syntax keyword roStructure fn struct union enum
syntax keyword roStatement return

highlight link roConditional Conditional
highlight link roRepeat Repeat
highlight link roStorageClass StorageClass
highlight link roStructure Structure
highlight link roStatement Statement

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
syntax match roDelimiter "\."
syntax match roOperator "\.\."

highlight link roOperator Operator

syntax match roUndefined "--"

highlight link roUndefined Constant

syntax keyword roBoolConstant true false
syntax match roIntegerConstant "0x[0-9a-fA-F_]\+\|0o[0-7_]\+\|0d[0-9_]\+\|0b[01_]\+\|\d[0-9_]*"
syntax match roFloatConstant "\(\d[0-9_]*\.[0-9_]*\|\.[0-9_]\+\)\(e[+-]\=[0-9_]\+\)\="
syntax match roEscapeSequence contained "\\[\\"'abtnvfre0]\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}"
syntax match roStringConstant "\"\(\\\"\|[^"]\)*\"" contains=roEscapeSequence
syntax match roCharConstant "\'[^\\']\'"
syntax match roCharConstant "\'\(\\[\\'"abtnvfre0]\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}\)\'" contains=roEscapeSequence

highlight link roBoolConstant Boolean
highlight link roIntegerConstant Number
highlight link roFloatConstant Float
highlight link roEscapeSequence SpecialChar
highlight link roStringConstant String
highlight link roCharConstant Character

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
syntax match roDelimiter "<|"
syntax match roDelimiter "|>"
syntax match roDelimiter "{|"
syntax match roDelimiter "|}"

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

