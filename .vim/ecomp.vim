syntax case match
syntax match cMyFunCall "\i\+ \=("me=e-1
"syntax match cMTmplFunCall "\i\+ \=<"me=e-1
syntax match cMyNamespace "\i\+ \=::"me=e-2
syntax match cMyFunName "^\i\+"
syntax match cMyType    "\i\+_t\>"
syntax match cMyRecType "\i\+_r\>"
syntax match cMyRefType "\i\+_[A-Z]\i\+_ref\>"
syntax match cMyNullType "\i\+_null\>"
syntax keyword cMyNULL NULL
syntax keyword cMyEcompTrue ECOMP_TRUE
syntax keyword cMyEcompFalse ECOMP_FALSE

highlight link cMyNULL cMyNullType
highlight link cMyEcompFalse cMyNullType

syntax match cMyConst "\<[A-Z][A-Z0-9_to]*\>"
syntax match cppClassConst "\<k[A-Z][a-zA-Z0-9]*\>"
syntax match cppGlobal "\<g[A-Z][a-zA-Z0-9]*\>"
syntax match cGlobal "\<[a-z0-9]*_g[A-Z][a-zA-Z0-9]*\>"
syntax match cMyArrow "->"
syntax match cMyNegate "!"
syntax match cMyCompare "=="
syntax match cMyNonCompare "!="
syntax match cMyQMark "[?:.;|&{}*]"

syntax match cMyErrorMessage "\i\+_ERROR\>"
highlight cMyErrorMessage guifg=#d3ff55
"highlight cMyErrorMessage guifg=#b0ce00

syntax match gnuAttr "\<_attr_\(fn\|st\|var\)_[a-z_]*\>"
syntax match gnuLikelyAttr "\(un\|\)likely\+ \=("me=e-1
highlight link gnuAttr cMyGnuAttr
highlight link gnuLikelyAttr cMyGnuAttr
highlight cMyGnuAttr ctermfg=3 cterm=bold gui=NONE guifg=#ffdf1b

highlight link cMyConst Constant
highlight link cppClassConst Constant
highlight link cGlobal Global
highlight link cppGlobal Global
"highlight link cMyNullType Constant
highlight cMyArrow ctermfg=3 cterm=bold gui=NONE guifg=Yellow
highlight link cMyNegate cMyCompare
highlight link cMyNonCompare cMyCompare
highlight link cMyQMark cMyCompare
highlight cMyCompare ctermfg=3 cterm=bold gui=NONE guifg=Yellow
highlight cMyFunName cterm=underline ctermfg=7 gui=underline guifg=Yellow

"highlight cMyFunCall ctermfg=2 cterm=bold  gui=NONE guifg=#b1feff
highlight cMyFunCall ctermfg=2 cterm=bold  gui=NONE guifg=#00ffff
"highlight cMTmplFunCall ctermfg=2 cterm=bold  gui=NONE guifg=#00ffff
highlight cMyNamespace ctermfg=2 cterm=bold  gui=NONE guifg=#00ffa5

"highlight cMyEcompFalse gui=NONE guifg=#ffce00
highlight cMyEcompTrue gui=NONE guifg=#dc00ff
"highlight cMyEcompFalse gui=NONE guifg=#00eaff

highlight link cMyType Type
highlight link cMyRefType Type
highlight link cMyRecType Type
"highlight cString gui=NONE guifg=#b0e0ff
"highlight cString gui=NONE guifg=#40e0d0
"highlight cString gui=NONE guifg=#e1ffff
"highlight cString gui=NONE guifg=#aeff2f
"highlight cString gui=NONE guifg=#fbfbd3
"highlight cString gui=NONE guifg=#ffd800
"highlight cString gui=NONE guifg=#ffc0cc
highlight cString gui=NONE guifg=#ddddf6
"highlight cString gui=NONE guifg=#d5d5ff

"highlight cMyNullType gui=NONE guifg=#99ffcc
"highlight cMyNullType gui=NONE guifg=#ffe000
"highlight cMyNullType gui=NONE guifg=#ffe0a0
"highlight cMyNullType gui=NONE guifg=#d1ff92
"highlight cMyNullType gui=NONE guifg=#ffd0ff
highlight cMyNullType gui=NONE guifg=#ffbbff
"highlight cMyNullType gui=NONE guifg=#ffc5fb

