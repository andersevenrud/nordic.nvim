return function(c, s, cs)
    local attributes = {
        'TSAnnotation', 'TSAttribute', -- TS
        'luametatableevents', 'luametatablearithmetic',
        'luametatableequivalence' -- lua
    }
    local numbers = {
        'TSBoolean', 'TSFloat', 'TSNumber', -- TS
        'Boolean', 'Float', 'Number' -- VL
    }
    local comments = {
        'TSComment', -- TS
        'Comment', -- VL
        'manFooter', -- man
        'rustCommentLine', 'rustCommentBlock', -- rust
        'vimCommentTitle', 'vimCommentLine' -- vim
    }
    local constructors = {
        'TSConstructor' -- TS
    }
    local conditionals = {
        'TSConditional', -- TS
        'Conditional', 'PreCondit', -- VL
        'cPreCondit', 'cPreConditMatch' -- C/C++
    }
    local constants = {
        'TSConstant', -- TS
        'Constant', -- VL
        'cConstant', 'cppConstant' -- C/C++
    }
    local defines = {
        'TSConstMacro', -- TS
        'Define', 'Macro' -- VL
    }
    local exceptions = {
        'TSException', -- TS
        'Exception' -- VL
    }
    local fields = {
        'TSField', 'TSProperty', 'TSTag', -- TS
        'Tag' -- VL
    }
    local functions = {
        'TSFunction', 'TSFuncMacro', 'TSMethod', -- TS
        'Function', -- VL
        'pythonfunction', -- python
        'vimFunction', 'vimUserFunc' -- vim
    }
    local includes = {
        'TSInclude', -- TS
        'Include', 'PreProc', -- VL
        'cInclude', -- C/C++
        'pythonimport', -- python
        'rustExternCrate' -- rust
    }
    local keywords = {
        'TSKeyword', 'TSKeywordFunction', -- TS
        'Keyword', 'Statement', -- VL
        'cStatement', 'cppStatement', 'cppModifier', 'cppAccess', -- C/C++
        'pythonstatement', 'pythonkeyword', -- python
        'rustDeriveTrait', -- rust
        'luastatement', 'luakeyword', 'luamykeyword', 'luafunctioncall',
        'luaspecialfunction', -- lua
        'vimCommand', 'vimnotfunc' -- vim
    }
    local labels = {
        'TSLabel', -- TS
        'Label' -- VL
    }
    local namespaces = {
        'TSNamespace', -- TS
        'pythonModule' -- python
    }
    local nones = {
        'TSNone', -- VL
        'pythonnone' -- python
    }
    local operators = {
        'TSOperator', -- TS
        'Operator', -- VL
        'cOperator', 'cppOperator', -- C/C++
        'pythonoperator' -- python
    }
    local parameters = {
        'TSParameter', 'TSParameterReference', -- TS
        'pythonparam' -- python
    }
    local properties = {
        'TSProperty' -- TS
    }
    local punctuations = {
        'TSPunctDelimiter', 'TSPunctBracket', 'TSPunctSpecial',
        'TSTagDelimiter', -- TS
        'Delimiter', -- VL
        'vimparensep', 'vimsep', 'vimbracket', -- vim
        'shCmdParenRegion', 'shCmdSubRegion' -- sh
    }
    local repeats = {
        'TSRepeat', -- TS
        'Repeat' -- VL
    }
    local strings = {
        'TSCharacter', 'TSString', -- TS
        'Character', 'String', -- VL
        'cString', 'cCppString', -- C/C++
        'pythonstringdelimiter', 'pythonbytes', 'pythonrawbytes',
        'pythonbytescontent' -- python
    }
    local strings_specials = {
        'TSStringRegex', 'TSStriingEscape', -- TS
        'SpecialChar', -- VL
        'cSpecialCharacter', -- C/C++
        'pythonescape' -- python
    }
    local symbols = {
        'TSSymbol', -- TS
        'Special', 'SpecialComment', -- VL
        'cSpecial', -- C/C++
        'pythonsymbol', -- python
        'rustCommentLineDoc', 'rustCommentBlockDoc' -- rust
    }
    local texts = {
        'TSText', 'TSStrong', 'TSEmphais', 'TSUnderline', 'TSStrike', 'TSTitle',
        'TSLiteral', -- TS
        'Text', -- VL
        'manTitle' -- man
    }
    local uris = {
        'TSURI' -- TS
    }
    local types = {
        'TSType', 'TSTypeBuildin', -- TS
        'Type', 'StorageClass', 'Structure', 'Typedef', -- VL
        'cType', 'cStorageClass', 'cStructure', 'cppType', 'cppStorageClass',
        'cppStructure', -- C/C++
        'pythonclass', -- python
        'vimlet' -- vim
    }
    local variables = {
        'TSVariable', -- TS
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        'vimmapmodkey', 'vimnotation', 'vimfuncvar', 'vimvar', -- vim
        'shDerefSimple', 'shDerefVar' -- sh
    }
    local builtins = { -- such as self. in python
        'TSConstBuiltin', 'TSFuncBuiltin', 'TSVariableBuiltin', -- TS
        'pythonbuiltin', 'pythonself', -- python
        'vimmap' -- vim
    }
    local notes = {
        'TSNote', -- TS
        'Todo', -- VL
        'cTODO' -- C/C++
    }
    local warnings = {
        'TSWarning', -- TS
        'Debug' -- VL
    }
    local dangers = {
        'TSDanger' -- TS
    }
    local errors = {
        'TSError', -- TS
        'Error', -- VL
        'rustCommentLineDocError', 'rustCommentBlockDocError' -- rust
    }

    return {
        {attributes, c.blue},
        {numbers, c.purple},
        {comments, c.grayish, c.none, cs.comments},
        {constructors, c.dark_white, c.none, cs.italic}, -- in C++ variable->constructors() \\ TS docs unclear
        {conditionals, c.intense_blue, c.none, cs.italic},
        {constants, c.dark_white},
        {defines, c.intense_blue},
        {exceptions, c.blue},
        {fields, c.blue, c.none},
        {functions, c.dark_white, c.none, cs.italic},
        {includes, c.intense_blue},
        {keywords, c.blue, c.none, s.none},
        {labels, c.intense_blue, c.none, cs.italic},
        {namespaces, c.dark_white, c.none, cs.italic},
        {nones, c.dark_white},
        {operators, c.blue},
        {parameters, c.dark_white, c.none, cs.italic},
        {properties, c.blue},
        {punctuations, c.blue},
        {repeats, c.blue, c.none, cs.italic},
        {strings, c.green},
        {strings_specials, c.yellow},
        {symbols, c.yellow},
        {texts, c.dark_white},
        {uris, c.purple},
        {types, c.cyan},
        {variables, c.dark_white},
        {builtins, c.blue, c.none, cs.italic},
        {notes, c.orange},
        {warnings, c.yellow},
        {dangers, c.yellow},
        {errors, c.red}
    }
end
