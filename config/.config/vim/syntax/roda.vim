
if exists("b:current_syntax")
  finish
endif

syntax match rodaIdentifier "[_a-zA-Z][_a-zA-Z0-9]*"

highlight link rodaIdentifier Identifier

syntax keyword rodaConditional if else match
syntax keyword rodaRepeat for in loop while break continue
syntax keyword rodaStorageClass mut
syntax keyword rodaStatement return typeof defer sizeof
syntax keyword rodaKeyword import export as from use mod fn type let extern pub static const

highlight link rodaConditional Conditional
highlight link rodaRepeat Repeat
highlight link rodaStorageClass StorageClass
highlight link rodaStructure Structure
highlight link rodaStatement Statement
highlight link rodaKeyword Keyword

syntax match rodaOperator "&&"
syntax match rodaOperator "||"
syntax match rodaOperator "=="
syntax match rodaOperator ">="
syntax match rodaOperator "<="
syntax match rodaOperator ">"
syntax match rodaOperator "<"
syntax match rodaOperator "|"
syntax match rodaOperator "\^"
syntax match rodaOperator "&"
syntax match rodaOperator ">>"
syntax match rodaOperator "<<"
syntax match rodaOperator "+"
syntax match rodaOperator "-"
syntax match rodaOperator "\*"
syntax match rodaOperator "\/"
syntax match rodaOperator "%"
syntax match rodaOperator "\~"
syntax match rodaOperator "!"
syntax match rodaOperator "\.\."
syntax match rodaOperator "->"
syntax match rodaOperator "=>"
syntax match rodaOperator "~>"

highlight link rodaOperator Operator

syntax match rodaDelimiter "\."
syntax match rodaDelimiter ","
syntax match rodaDelimiter ";"
syntax match rodaDelimiter ":"
syntax match rodaDelimiter "::"
syntax match rodaDelimiter "("
syntax match rodaDelimiter ")"
syntax match rodaDelimiter "{"
syntax match rodaDelimiter "}"
syntax match rodaDelimiter "\["
syntax match rodaDelimiter "\]"

highlight link rodaDelimiter Delimiter

syntax match rodaAssignment ":="
syntax match rodaAssignment "="
syntax match rodaAssignment "+="
syntax match rodaAssignment "-="
syntax match rodaAssignment "\*="
syntax match rodaAssignment "\/="
syntax match rodaAssignment "%="
syntax match rodaAssignment "|="
syntax match rodaAssignment "&="
syntax match rodaAssignment "\^="
syntax match rodaAssignment "<<="
syntax match rodaAssignment ">>="

highlight link rodaAssignment Statement

syntax keyword rodaTodo contained TODO FIXME XXX
syntax match rodaLineComment "\/\/.\{-}$" contains=roTodo
syntax region rodaRangeComment start="\/\*" end="\*\/" fold contains=roRangeComment,roTodo

highlight link rodaTodo Todo
highlight link rodaLineComment Comment
highlight link rodaRangeComment Comment

syntax match rodaCustomOperator "`[^`]\+`"

highlight link rodaCustomOperator Operator

syntax region rodaBlock start="{" end="}" fold transparent

syntax keyword rodaBoolConstant true false
syntax match rodaUnderscore contained "[_]"
syntax match rodaIntegerConstant "0[xh][0-9a-fA-F_]\+\|0o[0-7_]\+\|0d[0-9_]\+\|0b[01_]\+\|\d[0-9_]*" contains=roUnderscore
syntax match rodaFloatConstant "\d[0-9_]*\([eE][+-]\=\d[0-9_]*\)\|\d[0-9_]*\.\d[0-9_]*\([eE][+-]\=\d[0-9_]*\)\=" contains=roUnderscore
syntax match rodaEscapeSequence contained "\\[\\"'abtnvfre]\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}"
syntax region rodaStringConstant start=+"+  skip=+\\"+  end=+"+ contains=rodaEscapeSequence
syntax match rodaCharConstant "\'[^\\']\|\(\\.\|\\x\x\{2}\|\\u\x\{4}\|\\U\x\{8}\)\'" contains=rodaEscapeSequence
syntax keyword rodaType i8 i16 i32 i64 u8 u16 u32 u64 int uint isize usize f32 f64 bool

highlight link rodaBoolConstant Boolean
highlight link rodaIntegerConstant Number
highlight link rodaFloatConstant Float
highlight link rodaEscapeSequence SpecialChar
highlight link rodaUnderscore SpecialChar
highlight link rodaStringConstant String
highlight link rodaCharConstant Character
highlight link rodaType Type

syn match rodaFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1
syn match rodaFunctionPointer "(\s*\*\s*\h\w*\s*)\(\s\|\n\)*("

highlight link rodaFunction Function
highlight link rodaFunctionPointer Function

