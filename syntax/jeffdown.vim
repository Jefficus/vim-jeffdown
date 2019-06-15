" syntax/swift.vim
" Match NoteToSelf comments
syntax region jeffdownSelfNote start="\[" end="\]" 
syntax region jeffdownLink start="\[\[" end="\]\]" contains=jeffdownFileRef
syntax match jeffdownFileRef "\v(<\u\i*>)+" contained containedin=jeffdownLink
syntax region jeffdownItalic start="_" end="_"
syntax region jeffdownBold start="\*" end="\*"
syntax region jeffdownComment start="^ " end="$"

highlight default link jeffdownSelfNote Constant
highlight default link jeffdownLink PreProc
highlight default link jeffdownFileRef PreProc
highlight default link jeffdownItalic Special
highlight default link jeffdownBold Special
highlight default link jeffdownComment Statement

" Todo     Loud reverse text w black on yellow
" Comment  Yellow, just like this line
" Statement pale blue
" Type     green
"
" Constant Dull brown/orange fades into bg nicely
" Special Dull brown/orange fades into bg nicely
"
" PreProc  dull pink
" Operator dull pink
" Include  dull pink
" Identifier dull pink
