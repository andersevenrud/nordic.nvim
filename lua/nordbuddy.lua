local vim = vim
local Color, c, Group = require('colorbuddy').setup()
local s = require('colorbuddy.style').styles
local M = {}

local b = s.bold
local i = s.italic
local ul = s.underline
local cno = c.none
local sno = s.none
local uc = sno

local merge = function(list)
    local acc = {}
    for _, result in ipairs(list) do vim.list_extend(acc, result) end
    return acc
end

local highlight_to_groups = function(highlight)
    return function(groups)
        local acc = {}
        for _, name in ipairs(groups) do
            table.insert(acc, {name, highlight[1], highlight[2], highlight[3]})
        end
        return acc
    end
end

function M:setup()

    local nord = {
        -- Polar Night
        [0] = '#2e3440', -- dark black: bg
        [1] = '#3b4252', -- black
        [2] = '#434c5e', -- bright black
        [3] = '#4c566a', -- gray
        -- ['3_bright'] = '#616e88'
        -- Snow Storm
        [4] = '#d8dee9', -- dark white: fg
        [5] = '#e5e9f0', -- white
        [6] = '#eceff4', -- bright white
        -- Frost
        [7] = '#8fbcbb', -- cyan: classes, types and primitives.
        [8] = '#88c0d0', -- bright cyan: declarations, calls and execution statements of functions, methods and routines.
        [9] = '#81a1c1', -- blue: keywords, support characters, operators, tags, units, punctuations
        [10] = '#5e81ac', -- intense blue: pragmas, comment keywords and pre-processor statements.
        -- Aurora
        [11] = '#bf616a', -- red: deletions and errors
        [12] = '#d08770', -- orange: annotations and decorators
        [13] = '#ebcb8b', -- yellow: modifications, warning and escape characters
        [14] = '#a3be8c', -- green: additions and string
        [15] = '#b48ead' -- purple: integers and floating point numbers
    }

    for _k, _v in pairs(nord) do Color.new('nord' .. _k, _v) end

    vim.g.terminal_color_0 = nord[1]
    vim.g.terminal_color_1 = nord[11]
    vim.g.terminal_color_2 = nord[14]
    vim.g.terminal_color_3 = nord[13]
    vim.g.terminal_color_4 = nord[9]
    vim.g.terminal_color_5 = nord[15]
    vim.g.terminal_color_6 = nord[8]
    vim.g.terminal_color_7 = nord[5]
    vim.g.terminal_color_8 = nord[3]
    vim.g.terminal_color_9 = nord[11]
    vim.g.terminal_color_10 = nord[14]
    vim.g.terminal_color_11 = nord[13]
    vim.g.terminal_color_12 = nord[9]
    vim.g.terminal_color_13 = nord[15]
    vim.g.terminal_color_14 = nord[7]
    vim.g.terminal_color_15 = nord[6]
end

function M:use()
    vim.g.colors_name = 'nordbuddy'

    if vim.g.nord_spell == 'underline' then
        uc = ul
    elseif vim.g.nord_spell == 'undercurl' then
        uc = s.undercurl
    end

    M.setup(self)

    for _, group in ipairs(M:colors()) do
        local check_none = function(none_resp)
            return function(x) return not x and none_resp or x end
        end

        local cNone = check_none(cno)
        local sNone = check_none(sno)
        Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))

    end
end

function M:colors()
    return merge({
        M:UIcomponents(), --
        M:lsp(), --
        M:syntax(), --
        M:markdown(), --
        M:diff(), --
        M:telescope(), --
        M:plugins() --
    })
end

function M:UIcomponents()
    return {
        --- Editor---
        {'ColorColumn', cno, c.nord1}, --
        {'Cursor', c.nord0, c.nord4}, --
        {'CursorLine', cno, c.nord1}, --
        {'Error', c.nord4, c.nord11}, --
        {'iCursor', c.nord0, c.nord4}, --
        {'LineNr', c.nord3}, --
        {'MatchParen', c.nord8, c.nord3}, --
        {'NonText', c.nord2}, --
        {'Normal', c.nord4, c.nord0}, --
        {'PMenu', c.nord4, c.nord2}, --
        {'PmenuSbar', c.nord4, c.nord2}, --
        {'PMenuSel', c.nord8, c.nord3, b}, --
        {'PmenuThumb', c.nord8, c.nord3}, --
        {'SpecialKey', c.nord3}, --
        {'SpellBad', c.nord11, cno, uc}, --
        {'SpellCap', c.nord13, cno, uc}, --
        {'SpellLocal', c.nord5, cno, uc}, --
        {'SpellRare', c.nord6, cno, uc}, --
        {'Visual', cno, c.nord2}, --
        {'VisualNOS', cno, c.nord2}, --
        {'VertSplit', c.nord1, c.nord5}, --
        {'VisualNC', cno, c.nord2}, --
        {'NormalNC', c.nord4, cno}, --
        {'NormalFloat', c.nord5, c.nord1}, --
        {'RedrawDebugNormal', c.nord0, c.nord4}, --
        {'RedrawDebugClear', c.nord4, c.nord13}, --
        {'RedrawDebugComposed', c.nord4, c.nord14}, --
        {'RedrawDebugRecompose', c.nord4, c.nord11}, --
        --- Neovim ---
        {'healthError', c.nord11, c.nord1}, --
        {'healthSuccess', c.nord14, c.nord1}, --
        {'healthWarning', c.nord13, c.nord1}, --
        {'TermCursorNC', cno, c.nord1}, --
        {'NvimInternalError', c.nord11, c.nord11}, --
        --- Gutter ---
        {'CursorColumn', cno, c.nord1}, --
        {'CursorLineNr', c.nord4, c.nord1}, --
        {'Folded', c.nord3, c.nord1, b}, --
        {'FoldColumn', c.nord3, c.nord0}, --
        {'SignColumn', c.nord1, c.nord0}, --
        -- Navigation ---
        {'Directory', c.nord8}, --
        --- Prompt/Status ---
        {'EndOfBuffer', c.nord1}, --
        {'ErrorMsg', c.nord4, c.nord11}, --
        {'ModeMsg', c.nord4}, --
        {'MoreMsg', c.nord8}, --
        {'Question', c.nord4}, --
        {'StatusLine', c.nord8, c.nord3}, --
        {'StatusLineNC', c.nord4, c.nord1}, --
        {'StatusLineTerm', c.nord8, c.nord3}, --
        {'StatusLineTermNC', c.nord4, c.nord1}, --
        {'WarningMsg', c.nord0, c.nord13}, --
        {'WildMenu', c.nord8, c.nord1}, --
        --- Search ---
        {'IncSearch', c.nord6, c.nord10, ul}, --
        {'Search', c.nord1, c.nord8}, --
        --- Tabs ---
        {'TabLine', c.nord4, c.nord1}, --
        {'TabLineFill', c.nord4, c.nord1}, --
        {'TabLineSel', c.nord8, c.nord3}, --
        --- Window ---
        {'Title', c.nord4, cno, b} --
    }
end

function M:lsp()
    return {
        {'LspReferenceText', c.nord4}, --
        {'LspReferenceRead', c.nord5}, --
        {'LspReferenceWrite', c.nord6}, --
        {'LspDiagnosticsDefaultHint', c.nord10}, --
        {'LspDiagnosticsDefaultError', c.nord11}, --
        {'LspDiagnosticsDefaultWarning', c.nord13}, --
        {'LspDiagnosticsDefaultInformation', c.nord8} --
    }
end

function M:telescope()
    return {
        {'TelescopeBorder', c.nord3}, --
        {'TelescopeNormal', c.nord4}, --
        {'TelescopePromptPrefix', c.nord4}, --
        {'TelescopeSelection', c.nord8, c.nord3, b}, --
        {'TelescopeMatching', c.nord8, c.nord3} --
    }
end

function M:diff()
    return {
        {'DiffAdd', c.nord14, c.nord1}, --
        {'DiffChange', c.nord13, c.nord1}, --
        {'DiffDelete', c.nord11, c.nord1}, --
        {'DiffText', c.nord11, c.nord1}, --
        {'GitGutterAdd', c.nord14, c.nord1}, --
        {'GitGutterChange', c.nord13, c.nord1}, --
        {'GitGutterDelete', c.nord11, c.nord1}, --
        {'NeogitDiffAddHighlight', c.nord14, c.nord1}, --
        {'NeogitDiffDeleteHighlight', c.nord11, c.nord1}, --
        {'NeogitDiffContextHighlight', c.nord13, c.nord1}, --
        {'NeogitHunkHeaderHighlight', c.nord3:light(), c.nord0}, --
        {'NeogitHunkHeader', c.nord3:light(), c.nord0} --
    }
end

function M:markdown()
    local to_groups = highlight_to_groups({c.nord8, cno})
    local markdownHdelimiters = to_groups(
                                    {
            'markdownH1Delimiter', --
            'markdownH2Delimiter', --
            'markdownH3Delimiter', --
            'markdownH4Delimiter', --
            'markdownH5Delimiter', --
            'markdownH6Delimiter' --
        })

    to_groups = highlight_to_groups({c.nord8, cno, b})
    local markdownH = to_groups({
        'markdownH1', --
        'markdownH2', --
        'markdownH3', --
        'markdownH4', --
        'markdownH5', --
        'markdownH6' --
    })

    return merge({
        markdownHdelimiters, --
        markdownH, --
        {
            {'markdownCode', c.nord7}, --
            {'markdownCodeDelimiter', c.nord7}, --
            {'markdownBlockquote', c.nord7}, --
            {'markdownFootnote', c.nord7}, --
            {'markdownFootnoteDefinition', c.nord7}, --
            {'markdownId', c.nord7}, --
            {'markdownIdDeclaration', c.nord7}, --
            {'markdownIdDelimiter', c.nord9}, --
            {'markdownUrl', c.nord4}, --
            {'markdownLinkText', c.nord8}, --
            {'markdownLinkTextDelimiter', c.nord9}, --
            {'markdownLinkDelimiter', c.nord9} --
        }
    })
end

function M:syntax()
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
        'vimCommentTitle', 'vimCommentLine', -- vim
        'rustCommentLine', 'rustCommentBlock' -- rust
    }
    local constructors = {
        'TSConstructor', -- TS
        'vimFunction', 'vimUserFunc', 'vimCommand' -- vim
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
        'vimFuncName' -- vim
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
        'luaspecialfunction' -- lua
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
        'vimParenSep', 'vimSep', -- vim
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
        'vimVar' -- vim
    }
    local variables = {
        'TSVariable', -- TS
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        'shDerefSimple', 'shDerefVar' -- sh
    }
    local builtins = { -- such as self. in python
        'TSConstBuiltin', 'TSFuncBuiltin', 'TSVariableBuiltin', -- TS
        'pythonbuiltin', 'pythonself' -- python
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
    local groups = {
        {attributes, c.nord9}, --
        {numbers, c.nord15}, --
        {comments, c.nord3:light()}, --
        {constructors, c.nord3:light()}, --
        {conditionals, c.nord10, cno, i}, --
        {constants, c.nord4}, --
        {defines, c.nord10}, --
        {exceptions, c.nord9}, --
        {fields, c.nord9, cno, i}, --
        {functions, c.nord4, cno, i}, --
        {includes, c.nord10}, --
        {keywords, c.nord9, cno, sno}, --
        {labels, c.nord10, cno, i}, --
        {namespaces, c.nord4, cno, i}, --
        {nones, c.nord4}, --
        {operators, c.nord9}, --
        {parameters, c.nord4, cno, i}, --
        {properties, c.nord10}, --
        {punctuations, c.nord9}, --
        {repeats, c.nord9, cno, i}, --
        {strings, c.nord14}, --
        {strings_specials, c.nord13}, --
        {symbols, c.nord13}, --
        {texts, c.nord4}, --
        {uris, c.nord15}, --
        {types, c.nord7}, --
        {variables, c.nord4}, --
        {builtins, c.nord9, cno, i}, --
        {notes, c.nord12}, --
        {warnings, c.nord13}, --
        {dangers, c.nord13}, --
        {errors, c.nord11} --

    }

    local highlights = {}

    -- Apply grouping to each color group
    for _, group in ipairs(groups) do
        highlights = merge({
            highlights, --
            highlight_to_groups({group[2], group[3], group[4]})(group[1]) --
        })
    end

    return highlights
end

function M:plugins()
    -- lukas-reineke/indent-blankline.nvim
    local indent_blankline = {
        {'IndentBlanklineChar', c.nord3}, --
        {'IndentBlanklineSpaceChar', c.nord3}, --
        {'IndentBlanklineSpaceCharBlankline', c.nord4}, --
        {'IndentBlanklineContextChar', c.nord1} --
    }

    -- tpope/vim-fugitive
    local fugitive = {
        {'gitcommitDiscardedFile', c.nord11}, --
        {'gitcommitUntrackedFile', c.nord11}, --
        {'gitcommitSelectedFile', c.nord15} --
    }

    return merge({
        indent_blankline, --
        fugitive --
    })

end

return M
