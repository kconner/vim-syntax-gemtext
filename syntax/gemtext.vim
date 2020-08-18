" Vim syntax file for Gemtext markup
" as described by section 5 of the Gemini Specification
" https://gemini.circumlunar.space/docs/specification.html

" Add this file to ~/.vim/syntax/gemtext.vim

if exists("b:current_syntax")
    finish
endif

syntax match gemtextLinkOperator '\v^\=\>' nextgroup=gemtextLinkURL skipwhite
syntax match gemtextLinkURL '\v\S+' contained nextgroup=gemtextLinkText skipwhite
syntax match gemtextLinkText '\v\S.*$' contained

syntax region gemtextPreformatBlock start="\v^```.*$" end="\v^```" keepend

syntax match gemtextHeadingOperator '\v^##?#?' nextgroup=gemtextHeadingText skipwhite
syntax match gemtextHeadingText '\v\s*\S.*$' contained

syntax match gemtextUnorderedListItemOperator '\v^\*\s'

syntax match gemtextQuoteOperator '\v^\>' nextgroup=gemtextQuoteText skipwhite
syntax match gemtextQuoteText '\v.*$' contained

let b:current_syntax = "gemtext"

hi def link gemtextLinkOperator Operator
hi def link gemtextLinkURL Underlined
hi def link gemtextLinkText String

hi def link gemtextPreformatBlock PreProc

hi def link gemtextHeadingOperator Operator
hi def link gemtextHeadingText Identifier

hi def link gemtextUnorderedListItemOperator Operator

hi def link gemtextQuoteOperator Operator
hi def link gemtextQuoteText String
