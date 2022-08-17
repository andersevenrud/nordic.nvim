return function(c, s, cs)
    local attributes = {
        -- TS
        'TSAnnotation',
        'TSAttribute',
        -- lua
        'luametatableevents',
        'luametatablearithmetic',
        'luametatableequivalence',
    }
    local numbers = {
        -- TS
        'TSBoolean',
        'TSFloat',
        'TSNumber',

        'Boolean',
        'Float',
        'Number', -- VL
    }
    local comments = {
        'TSComment', -- TS
        'Comment', -- VL
        'manFooter', -- man
        -- rust
        'rustCommentLine',
        'rustCommentBlock',
        -- vim
        'vimCommentTitle',
        'vimCommentLine',
    }
    local constructors = {
        'TSConstructor', -- TS
    }
    local conditionals = {
        'TSConditional', -- TS
        -- VL
        'Conditional',
        'PreCondit',
        -- C/C++
        'cPreCondit',
        'cPreConditMatch',
    }
    local constants = {
        'TSConstant', -- TS
        'Constant', -- VL
        -- C/C++
        'cConstant',
        'cppConstant',
    }
    local defines = {
        'TSConstMacro', -- TS
        'Define',
        'Macro', -- VL
    }
    local exceptions = {
        'TSException', -- TS
        'Exception', -- VL
    }
    local fields = {
        'TSField',
        'TSProperty',
        'TSTag', -- TS
        'Tag', -- VL
    }
    local functions = {
        -- TS
        'TSFunction',
        'TSFuncMacro',
        'TSMethod',
        'Function', -- VL
        'pythonfunction', -- python
        'vimFunction',
        'vimUserFunc', -- vim
    }
    local includes = {
        'TSInclude', -- TS
        'Include',
        'PreProc', -- VL
        'cInclude', -- C/C++
        'pythonimport', -- python
        'rustExternCrate', -- rust
    }
    local keywords = {
        -- TS
        'TSKeyword',
        'TSKeywordFunction',
        -- VL
        'Keyword',
        'Statement',
        -- C/C++
        'cStatement',
        'cppStatement',
        'cppModifier',
        'cppAccess',
        -- python
        'pythonstatement',
        'pythonkeyword',
        'rustDeriveTrait', -- rust
        -- lua
        'luastatement',
        'luakeyword',
        'luamykeyword',
        'luafunctioncall',
        'luaspecialfunction',
        -- vim
        'vimCommand',
        'vimnotfunc',
    }
    local labels = {
        'TSLabel', -- TS
        'Label', -- VL
    }
    local namespaces = {
        'TSNamespace', -- TS
        'pythonModule', -- python
    }
    local nones = {
        'TSNone', -- VL
        'pythonnone', -- python
    }
    local operators = {
        'TSOperator', -- TS
        'Operator', -- VL
        -- C/C++
        'cOperator',
        'cppOperator',
        'pythonoperator', -- python
    }
    local parameters = {
        'TSParameter',
        'TSParameterReference', -- TS
        'pythonparam', -- python
    }
    local properties = {
        'TSProperty', -- TS
    }
    local punctuations = {
        -- TS
        'TSPunctDelimiter',
        'TSPunctBracket',
        'TSPunctSpecial',
        'TSTagDelimiter',
        -- VL
        'Delimiter',
        -- vim
        'vimparensep',
        'vimsep',
        'vimbracket',
        -- sh
        'shCmdParenRegion',
        'shCmdSubRegion',
    }
    local repeats = {
        'TSRepeat', -- TS
        'Repeat', -- VL
    }
    local strings = {
        -- TS
        'TSCharacter',
        'TSString',
        -- VL
        'Character',
        'String',
        -- C/C++
        'cString',
        'cCppString',
        -- python
        'pythonstringdelimiter',
        'pythonbytes',
        'pythonrawbytes',
        'pythonbytescontent',
    }
    local strings_specials = {
        -- TS
        'TSStringRegex',
        'TSStringEscape',
        'SpecialChar', -- VL
        'cSpecialCharacter', -- C/C++
        'pythonescape', -- python
    }
    local symbols = {
        'TSSymbol', -- TS
        -- VL
        'Special',
        'SpecialComment',
        'cSpecial', -- C/C++
        'pythonsymbol', -- python
        -- rust
        'rustCommentLineDoc',
        'rustCommentBlockDoc',
    }
    local texts = {
        'TSText', -- TS
        'Text', -- VL
        'manTitle', -- man
    }
    local uris = {
        'TSURI', -- TS
    }
    local types = {
        -- TS
        'TSType',
        'TSTypeBuildin',
        -- VL
        'Type',
        'StorageClass',
        'Structure',
        'Typedef',
        -- C/C++
        'cType',
        'cStorageClass',
        'cStructure',
        'cppType',
        'cppStorageClass',
        'cppStructure',
        -- python
        'pythonclass',
        'vimlet', -- vim
    }
    local variables = {
        'TSVariable', -- TS
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        -- vim
        'vimmapmodkey',
        'vimnotation',
        'vimfuncvar',
        'vimvar',
        -- sh
        'shDerefSimple',
        'shDerefVar',
    }
    local builtins = { -- such as self. in python
        -- TS
        'TSConstBuiltin',
        'TSFuncBuiltin',
        'TSVariableBuiltin',
        -- python
        'pythonbuiltin',
        'pythonself',
        'vimmap', -- vim
    }
    local notes = {
        'TSNote', -- TS
        'Todo', -- VL
        'cTODO', -- C/C++
    }
    local warnings = {
        'TSWarning', -- TS
        'Debug', -- VL
    }
    local dangers = {
        'TSDanger', -- TS
    }
    local errors = {
        'TSError', -- TS
        'Error', -- VL
        -- rust
        'rustCommentLineDocError',
        'rustCommentBlockDocError',
    }

    return {
        { attributes, c.blue },
        { numbers, c.purple },
        { comments, c.grayish, c.none, cs.comments },
        { constructors, c.dark_white, c.none, cs.italic }, -- in C++ variable->constructors() \\ TS docs unclear
        { conditionals, c.intense_blue, c.none, cs.italic },
        { constants, c.dark_white },
        { defines, c.intense_blue },
        { exceptions, c.blue },
        { fields, c.blue, c.none },
        { functions, c.dark_white, c.none, cs.italic },
        { includes, c.intense_blue },
        { keywords, c.blue, c.none, s.none },
        { labels, c.intense_blue, c.none, cs.italic },
        { namespaces, c.dark_white, c.none, cs.italic },
        { nones, c.dark_white },
        { operators, c.blue },
        { parameters, c.dark_white, c.none, cs.italic },
        { properties, c.blue },
        { punctuations, c.blue },
        { repeats, c.blue, c.none, cs.italic },
        { strings, c.green },
        { strings_specials, c.yellow },
        { symbols, c.yellow },
        { texts, c.dark_white },
        { uris, c.purple },
        { types, c.cyan },
        { variables, c.dark_white },
        { builtins, c.blue, c.none, cs.italic },
        { notes, c.orange },
        { warnings, c.yellow },
        { dangers, c.yellow },
        { errors, c.red },

        { 'TSTitle', c.bright_cyan },
        { 'TSStrong', c.dark_white, c.none, s.bold },
        { { 'TSEmphasis', 'TSTextReference' }, c.dark_white, c.none, s.italic },
        { 'TSUnderline', c.dark_white, c.none, s.underline },
        { 'TSStrike', c.dark_white, c.none, s.strikethrough },
        { 'TSLiteral', c.cyan },
        { 'TSStringEscape', c.grayish },
    }
end
