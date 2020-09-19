" Vim syntax file
" Language: mt
" Maintainer: Ramsay Carslaw
" Latest Revision: 14 Spetember 2020

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword basicLanguageKeywords print var if fn for while else return 

" builtins 
syntax keyword builtinfn input read write clock string number

" numbers
" Integer with - + or nothing in front
syn match mtNumber '\d\+'
syn match mtNumber '[-+]\d\+'

" Floating point number with decimal no E or e 
syn match mtNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match mtNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match mtNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match mtNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match mtNumber '\d[[:digit:]]*\.\d*[e][\-+]\=\d\+'

syntax region mtString start=/\v"/ skip=/\v\\./ end=/\v"/

" Comments
syn match mtComment "//.*$"

let b:current_syntax = "mt"

hi def link basicLanguageKeywords Keyword
hi def link builtinfn Function
hi def link mtComment Comment
hi def link mtString String
hi def link mtNumber Constant
