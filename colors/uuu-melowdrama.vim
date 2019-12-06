" ===============================================================
" OceanicNext
" Author=['Mike Ha']tington
" ===============================================================

" {{{ Setup
  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

  let g:colors_name="uuu-melowdrama"

" }}}

" {{{ Italics
  let s:italic = "italic"
  endif
"}}}

" {{{ Bold
  let s:bold = "bold"
"}}}



" {{{ Colors
  let s:editor-backgroundcolor=['#332d5a']
  let s:editor-color=['#7b9cff']
  let s:gutter-color=['#665b8d']
  let s:gutter-punk=['hellyea']
  let s:selectedline-backgroundcolor=['#28254a']
  let s:selectedline-backgroundguttercolor=['#7b9cff']
  let s:cursor-color=['#ffd400']
  let s:indentguide-linecolor=['#51467c']
  let s:folded-codecolor=['#ff2f91']
  let s:bracketmatcher-backgroundcolor=['#fad549']
  let s:comment-color=['#51467c']
  let s:selector-color=['#fd477b']
  let s:pseudo-color=['#ff9700']
  let s:propertyname-color=['#7b9cff']
  let s:propertyvalue-color=['#cacadb']
  let s:unit-color=['#ff9409']
  let s:number-color=['#07fdff']
  let s:punctuation-color=['#cacadb']
  let s:doctype-color=['#cacadb']
  let s:tag-color=['#c02b44']
  let s:attributename-color=['#a477f1']
  let s:quotationmark-color=['#cacadb']
  let s:string-color=['#807711']
  let s:storage-color=['#a477f1']
  let s:storagemodifier-color=['#a477f1']
  let s:operator-color=['#fffb00']
  let s:functionname-color=['#7b9cff']
  let s:consolelog-color=['#ff2600']
  let s:class-color=['#ff9700']
  let s:instance-color=['#00f900']
  let s:regex-color=['#ffffff']
  let s:control-color=['#85c99b']
  let s:constant-color=['#fec109']
  let s:boolean-color=['#fa685c']
  let s:module-color=['#e52661']
  let s:namespace-color=['#effb23']
  let s:type-color=['#00f900']
  let s:identifier-color=['#7d6a52']
  let s:gitgutter-lineaddedcolor=['#03ff66']
  let s:gitgutter-linemodifiedcolor=['#ffd400']
  let s:gitgutter-lineremovedcolor=['#ff0100']

  let s:baseZ00=['#000000', '235']
  let s:baseZ01=['#006c15', '237']
  let s:baseZ02=['#00ccff', '240']
  let s:baseZ03=['#ff00ff', '243']
  let s:baseZ04=['#66ffcc', '145']
  let s:baseZ05=['#00dd99', '251']
  let s:baseZ06=['#00ffff', '252']
  let s:baseZ07=['#ffff00', '253']
  let s:baseZ08=['#ec5f67', '203']
  let s:baseZ09=['#f99157', '209']
  let s:baseZ0A=['#fac863', '221']
  let s:baseZ0B=['#7b9cff', '114']
  let s:baseZ0C=['#62b3b2', '73']
  let s:baseZ0D=['#6699cc', '68']
  let s:baseZ0E=['#c594c5', '176']
  let s:baseZ0F=['#ab7967', '137']
  let s:baseZ10=['#ffffff', '15']
  let s:none=['NONE', 'NONE']

" }}}
" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}

" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
call <sid>hi('Bold',                       '',       '',       'bold',      '')
call <sid>hi('Debug',                      s:consolelog-color, '',       '',          '')
call <sid>hi('Directory',                  s:base0D, '',       '',          '')
call <sid>hi('ErrorMsg',                   s:consolelog-color, s:base00, '',          '')
call <sid>hi('Exception',                  s:consolelog-color, '',       '',          '')
call <sid>hi('FoldColumn',                 s:base0D, s:base00, '',          '')
call <sid>hi('Folded',                     s:base03, s:base01, s:italic,    '')
call <sid>hi('IncSearch',                  s:base01, s:base09, 'NONE',      '')
call <sid>hi('Italic',                     '',       '',       s:italic,    '')

call <sid>hi('Macro',                      s:consolelog-color, '',       '',          '')
call <sid>hi('MatchParen',                 s:base05, s:base03, '',          '')
call <sid>hi('ModeMsg',                    s:base0B, '',       '',          '')
call <sid>hi('MoreMsg',                    s:base0B, '',       '',          '')
call <sid>hi('Question',                   s:base0D, '',       '',          '')
call <sid>hi('Search',                     s:base03, s:base0A, '',          '')
call <sid>hi('SpecialKey',                 s:base03, '',       '',          '')
call <sid>hi('TooLong',                    s:consolelog-color, '',       '',          '')
call <sid>hi('Underlined',                 s:consolelog-color, '',       '',          '')
call <sid>hi('Visual',                     '',       s:base02, '',          '')
call <sid>hi('VisualNOS',                  s:consolelog-color, '',       '',          '')
call <sid>hi('WarningMsg',                 s:consolelog-color, '',       '',          '')
call <sid>hi('WildMenu',                   s:base10, s:base0D, '',          '')
call <sid>hi('Title',                      s:base0D, '',       '',          '')
call <sid>hi('Conceal',                    s:base0D, s:base00, '',          '')
call <sid>hi('Cursor',                     s:base00, s:base05, '',          '')
call <sid>hi('NonText',                    s:base03, '',       '',          '')
call <sid>hi('Normal',                     s:base05, s:base00, '',          '')
call <sid>hi('EndOfBuffer',                s:base05, s:base00, '',          '')
call <sid>hi('LineNr',                     s:base03, s:base00, '',          '')
call <sid>hi('SignColumn',                 s:base00, s:base00, '',          '')
call <sid>hi('StatusLine',                 s:base01, s:base03, '',          '')
call <sid>hi('StatusLineNC',               s:base03, s:base01, '',          '')
call <sid>hi('VertSplit',                  s:base00, s:base02, '',          '')
call <sid>hi('ColorColumn',                '',       s:base01, '',          '')
call <sid>hi('CursorColumn',               '',       s:base01, '',          '')
call <sid>hi('CursorLine',                 '',       s:base01, 'NONE',      '')
call <sid>hi('CursorLineNR',               s:base00, s:base00, '',          '')
call <sid>hi('CursorLineNr',               s:base03, s:base01, '',          '')
call <sid>hi('PMenu',                      s:base04, s:base01, '',          '')
call <sid>hi('PMenuSel',                   s:base10, s:base0D, '',          '')
call <sid>hi('PmenuSbar',                  '',       s:base02, '',          '')
call <sid>hi('PmenuThumb',                 '',       s:base07, '',          '')
call <sid>hi('TabLine',                    s:base03, s:base01, '',          '')
call <sid>hi('TabLineFill',                s:base03, s:base01, '',          '')
call <sid>hi('TabLineSel',                 s:base0B, s:base01, '',          '')
call <sid>hi('helpExample',                s:base0A, '',       '',          '')
call <sid>hi('helpCommand',                s:base0A, '',       '',          '')





  let s:editor-backgroundcolor=['#332d5a']
  let s:editor-color=['#7b9cff']
  let s:gutter-color=['#665b8d']
  let s:gutter-punk=['hellyea']
  let s:selectedline-backgroundcolor=['#28254a']
  let s:selectedline-backgroundguttercolor=['#7b9cff']
  let s:cursor-color=['#ffd400']
  let s:indentguide-linecolor=['#51467c']
  let s:folded-codecolor=['#ff2f91']
  let s:bracketmatcher-backgroundcolor=['#fad549']
  let s:comment-color=['#51467c']
  let s:selector-color=['#fd477b']
  let s:pseudo-color=['#ff9700']
  let s:propertyname-color=['#7b9cff']
  let s:propertyvalue-color=['#cacadb']
  let s:unit-color=['#ff9409']
  let s:number-color=['#07fdff']
  let s:punctuation-color=['#cacadb']
  let s:doctype-color=['#cacadb']
  let s:tag-color=['#c02b44']
  let s:attributename-color=['#a477f1']
  let s:quotationmark-color=['#cacadb']
  let s:string-color=['#807711']
  let s:storage-color=['#a477f1']
  let s:storagemodifier-color=['#a477f1']
  let s:operator-color=['#fffb00']
  let s:functionname-color=['#7b9cff']
  let s:consolelog-color=['#ff2600']
  let s:class-color=['#ff9700']
  let s:instance-color=['#00f900']
  let s:regex-color=['#ffffff']
  let s:control-color=['#85c99b']
  let s:constant-color=['#fec109']
  let s:boolean-color=['#fa685c']
  let s:module-color=['#e52661']
  let s:namespace-color=['#effb23']
  let s:type-color=['#00f900']
  let s:identifier-color=['#7d6a52']
  let s:gitgutter-lineaddedcolor=['#03ff66']
  let s:gitgutter-linemodifiedcolor=['#ffd400']
  let s:gitgutter-lineremovedcolor=['#ff0100']
  let s:white=['#ffffff']


" Standard syntax highlighting
call <sid>hi('Boolean',                    s:boolean-color, '',       '',          '')
call <sid>hi('Character',                  s:consolelog-color, '',       '',          '')
call <sid>hi('Comment',                    s:comment-color, '',       s:italic,    '')
call <sid>hi('Conditional',                s:control-color, '',       '',          '')
call <sid>hi('Constant',                   s:constant-color, '',       '',          '')
call <sid>hi('Define',                     s:base0E, '',       '',          '')
call <sid>hi('Delimiter',                  s:base0F, '',       '',          '')
call <sid>hi('Float',                      s:number-color, '',       '',          '')
call <sid>hi('Function',                   s:functionname-color, '',       '',          '')
call <sid>hi('Identifier',                 s:identifier-color, '',       '',          '')
call <sid>hi('Include',                    s:base0D, '',       '',          '')
call <sid>hi('Keyword',                    s:base0E, '',       '',          '')
call <sid>hi('Label',                      s:base0A, '',       '',          '')
call <sid>hi('Number',                     s:number-color, '',       '',          '')
call <sid>hi('Operator',                   s:operator-color, '',       '',          '')
call <sid>hi('PreProc',                    s:base0A, '',       '',          '')
call <sid>hi('Repeat',                     s:base0A, '',       '',          '')
call <sid>hi('Special',                    s:base0C, '',       '',          '')
call <sid>hi('SpecialChar',                s:base0F, '',       '',          '')
call <sid>hi('Statement',                  s:consolelog-color, '',       '',          '')
call <sid>hi('StorageClass',               s:storage-color, '',       '',          '')
call <sid>hi('String',                     s:string-colo, '',       '',          '')
call <sid>hi('Structure',                  s:base0E, '',       '',          '')
call <sid>hi('Tag',                        s:tag-color, '',       '',          '')
call <sid>hi('Todo',                       s:white, s:folded-codecolor, '',          '')
call <sid>hi('Type',                       s:type-color, '',       '',          '')
call <sid>hi('Typedef',                    s:base0A, '',       '',          '')

call <sid>hi('SpellBad',                   '',       '',       'undercurl', '')
call <sid>hi('SpellLocal',                 '',       '',       'undercurl', '')
call <sid>hi('SpellCap',                   '',       '',       'undercurl', '')
call <sid>hi('SpellRare',                  '',       '',       'undercurl', '')


cssVendor:                   '' # Comment

cssTagName:                  '' # Statement

cssSelectorOp:               '' # Special
cssSelectorOp2:              '' # Special
cssAttrComma:                '' # Special


cssFontProp:                 '' # cssProp

cssHyerlinkProp:             '' # cssProp

cssPseudoClassId:            '' # PreProc
cssPseudoClassLang:          '' # Constant

cssValueLength:              '' # Number
cssValueInteger:             '' # Number
cssValueNumber:              '' # Number
cssValueAngle:               '' # Number
cssValueTime:                '' # Number
cssValueFrequency:           '' # Number

cssFunction:                 '' # Constant

cssURL:                      '' # String
cssFunctionName:             '' # Function
cssFunctionComma:            '' # Function
cssColor:                    'base0C . .'
cssIdentifier:               '' # Function
cssInclude:                  '' # Include
cssIncludeKeyword:           '' # atKeyword
cssImportant:                '' # Special
cssBraces:                   'base05 . .'
cssBraceError:               '' # Error
cssError:                    '' # Error
cssUnicodeEscape:            '' # Special
cssStringQQ:                 '' # String
cssStringQ:                  '' # String
cssAttributeSelector:        '' # String
cssMedia:                    '' # atKeyword
cssMediaType:                '' # Special
cssMediaComma:               '' # Normal
cssMediaKeyword:             '' # Statement
cssMediaProp:                '' # cssProp
cssMediaAttr:                '' # cssAttr
cssPage:                     '' # atKeyword
cssPagePseudo:               '' # PreProc
cssPageMargin:               '' # atKeyword
cssPageProp:                 '' # cssProp
cssKeyFrame:                 '' # atKeyword
cssKeyFrameSelector:         '' # Constant
cssFontDescriptor:           '' # Special
cssFontDescriptorFunction:   '' # Constant
cssFontDescriptorProp:       '' # cssProp
cssFontDescriptorAttr:       '' # cssAttr
cssUnicodeRange:             '' # Constant
cssClassName:                'base0E . .'
cssClassNameDot:             '' # Function
cssProp:                     '' # StorageClass
cssAttr:                     '' # Constant
cssUnitDecorators:           '' # Number
cssNoise:                    '' # Noise
atKeyword:                   '' # PreProc


call <sid>hi('cssColor',                   s:base0C, '',       '',          '')
call <sid>hi('cssBraces',                  s:base05, '',       '',          '')
call <sid>hi('cssClassName',               s:base0E, '',       '',          '')


call <sid>hi('DiffAdd',                    s:base0B, s:base01, 'bold',      '')
call <sid>hi('DiffChange',                 s:base03, s:base01, '',          '')
call <sid>hi('DiffDelete',                 s:consolelog-color, s:base01, '',          '')
call <sid>hi('DiffText',                   s:base0D, s:base01, '',          '')
call <sid>hi('DiffAdded',                  s:base10, s:base0B, 'bold',      '')
call <sid>hi('DiffFile',                   s:consolelog-color, s:base00, '',          '')
call <sid>hi('DiffNewFile',                s:base0B, s:base00, '',          '')
call <sid>hi('DiffLine',                   s:base0D, s:base00, '',          '')
call <sid>hi('DiffRemoved',                s:base10, s:consolelog-color, 'bold',      '')

" call <sid>hi('Error',                      s:consolelog-color, s:none,   'undercurl',          '')
" call <sid>hi('NvimInternalError',          s:consolelog-color, s:none,   '',          '')
" call <sid>hi('NvimInternalError',          s:consolelog-color, s:none,   '',          '')
call <sid>hi('gitCommitOverflow',          s:consolelog-color, '',       '',          '')
call <sid>hi('gitCommitSummary',           s:base0B, '',       '',          '')

call <sid>hi('htmlBold',                   s:base0A, '',       '',          '')
call <sid>hi('htmlItalic',                 s:base0E, '',       '',          '')
call <sid>hi('htmlTag',                    s:base0C, '',       '',          '')
call <sid>hi('htmlEndTag',                 s:base0C, '',       '',          '')
call <sid>hi('htmlArg',                    s:base0A, '',       '',          '')
call <sid>hi('htmlTagName',                s:base07, '',       '',          '')

call <sid>hi('javaScript',                 s:base05, '',       '',          '')
call <sid>hi('javaScriptNumber',           s:base09, '',       '',          '')
call <sid>hi('javaScriptBraces',           s:base05, '',       '',          '')

call <sid>hi('markdownCode',               s:base0B, '',       '',          '')
call <sid>hi('markdownCodeBlock',          s:base0B, '',       '',          '')
call <sid>hi('markdownHeadingDelimiter',   s:base0D, '',       '',          '')
call <sid>hi('markdownItalic',             s:base0E, '',       s:italic,    '')
call <sid>hi('markdownBold',               s:base0A, '',       s:bold,      '')
call <sid>hi('markdownCodeDelimiter',      s:base0F, '',       s:italic,    '')
call <sid>hi('markdownError',              s:base05, s:base00, '',          '')

call <sid>hi('NeomakeErrorSign',           s:consolelog-color, s:base00, '',          '')
call <sid>hi('NeomakeWarningSign',         s:base0A, s:base00, '',          '')
call <sid>hi('NeomakeInfoSign',            s:base10, s:base00, '',          '')
call <sid>hi('NeomakeError',               s:consolelog-color, '',       'undercurl', s:consolelog-color)
call <sid>hi('NeomakeWarning',             s:consolelog-color, '',       'undercurl', s:consolelog-color)

call <sid>hi('ALEErrorSign',               s:consolelog-color, s:base00, s:bold,      '')
call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold,      '')
call <sid>hi('ALEInfoSign',                s:base10, s:base00, s:bold,      '')

call <sid>hi('NERDTreeExecFile',           s:base05, '',       '',          '')
call <sid>hi('NERDTreeDirSlash',           s:base0D, '',       '',          '')
call <sid>hi('NERDTreeOpenable',           s:base0D, '',       '',          '')
call <sid>hi('NERDTreeFile',               '',       s:none,   '',          '')
call <sid>hi('NERDTreeFlags',              s:base0D, '',       '',          '')

call <sid>hi('phpComparison',              s:base05, '',       '',          '')
call <sid>hi('phpParent',                  s:base05, '',       '',          '')
call <sid>hi('phpMemberSelector',          s:base05, '',       '',          '')

call <sid>hi('pythonRepeat',               s:base0E, '',       '',          '')
call <sid>hi('pythonOperator',             s:base0E, '',       '',          '')

call <sid>hi('rubyConstant',               s:base0A, '',       '',          '')
call <sid>hi('rubySymbol',                 s:base0B, '',       '',          '')
call <sid>hi('rubyAttribute',              s:base0D, '',       '',          '')
call <sid>hi('rubyInterpolation',          s:base0B, '',       '',          '')
call <sid>hi('rubyInterpolationDelimiter', s:base0F, '',       '',          '')
call <sid>hi('rubyStringDelimiter',        s:base0B, '',       '',          '')
call <sid>hi('rubyRegexp',                 s:base0C, '',       '',          '')

call <sid>hi('sassidChar',                 s:consolelog-color, '',       '',          '')
call <sid>hi('sassClassChar',              s:base09, '',       '',          '')
call <sid>hi('sassInclude',                s:base0E, '',       '',          '')
call <sid>hi('sassMixing',                 s:base0E, '',       '',          '')
call <sid>hi('sassMixinName',              s:base0D, '',       '',          '')

call <sid>hi('vimfilerLeaf',               s:base05, '',       '',          '')
call <sid>hi('vimfilerNormalFile',         s:base05, s:base00, '',          '')
call <sid>hi('vimfilerOpenedFile',         s:base0D, '',       '',          '')
call <sid>hi('vimfilerClosedFile',         s:base0D, '',       '',          '')

call <sid>hi('GitGutterAdd',               s:base0B, s:base00, s:bold,      '')
call <sid>hi('GitGutterChange',            s:base0D, s:base00, s:bold,      '')
call <sid>hi('GitGutterDelete',            s:consolelog-color, s:base00, s:bold,      '')
call <sid>hi('GitGutterChangeDelete',      s:base0E, s:base00, s:bold,      '')

call <sid>hi('SignifySignAdd',             s:base0B, s:base00, s:bold,      '')
call <sid>hi('SignifySignChange',          s:base0D, s:base00, s:bold,      '')
call <sid>hi('SignifySignDelete',          s:consolelog-color, s:base00, s:bold,      '')
call <sid>hi('SignifySignChangeDelete',    s:base0E, s:base00, s:bold,      '')
call <sid>hi('SignifySignDeleteFirstLine', s:consolelog-color, s:base00, s:bold,      '')

call <sid>hi('xmlTag',                     s:base0C, '',       '',          '')
call <sid>hi('xmlTagName',                 s:base05, '',       '',          '')
call <sid>hi('xmlEndTag',                  s:base0C, '',       '',          '')


" }}}

let g:terminal_color_0=s:base00[0]
let g:terminal_color_8=s:base00[0]

let g:terminal_color_1=s:consolelog-color[0]
let g:terminal_color_9=s:consolelog-color[0]

let g:terminal_color_2=s:base0B[0]
let g:terminal_color_10=s:base0B[0]

let g:terminal_color_3=s:base0A[0]
let g:terminal_color_11=s:base0A[0]

let g:terminal_color_4=s:base0D[0]
let g:terminal_color_12=s:base0D[0]

let g:terminal_color_5=s:base0E[0]
let g:terminal_color_13=s:base0E[0]

let g:terminal_color_6=s:base0C[0]
let g:terminal_color_14=s:base0C[0]

let g:terminal_color_7=s:base05[0]
let g:terminal_color_15=s:base05[0]

let g:terminal_color_background=s:base00[0]
let g:terminal_color_foreground=s:base10[0]
