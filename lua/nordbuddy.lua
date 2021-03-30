local vim = vim
local Color, c, Group = require"colorbuddy".setup()
local s = require"colorbuddy.style".styles
local M = {}

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

local nord = {
    -- Polar Night
    [0] = '#2e3440',
    [1] = '#3b4252',
    [2] = '#434c5e',
    [3] = '#4c566a',
    -- ['3_bright'] = '#616e88'
    -- Snow Storm
    [4] = '#d8dee9',
    [5] = '#e5e9f0',
    [6] = '#eceff4',
    -- Frost
    [7] = '#8fbcbb',
    [8] = '#88c0d0',
    [9] = '#81a1c1',
    -- Aurora
    [10] = '#5e81ac',
    [11] = '#bf616a',
    [12] = '#d08770',
    [13] = '#ebcb8b',
    [14] = '#a3be8c',
    [15] = '#b48ead'
}

function M:setup()
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

    Color.new('fg', nord[4])
    Color.new('bg', nord[0])
    Color.new('black', nord[1])
    Color.new('brightblack', nord[2])
    Color.new('gray', nord[3])
    Color.new('white', nord[5])
    Color.new('brightwhite', nord[6])
    Color.new('lightcyan', nord[7])
    Color.new('cyan', nord[8])
    Color.new('lightblue', nord[9])
    Color.new('blue', nord[10])
    Color.new('red', nord[11])
    Color.new('orange', nord[12])
    Color.new('yellow', nord[13])
    Color.new('green', nord[14])
    Color.new('magenta', nord[15])
end

function M:use()
    vim.cmd("set termguicolors")
    vim.g.colors_name = 'nordbuddy'
    M.setup(self)

    for _, group in ipairs(M:colors()) do
        local check_none = function(none_resp)
            return function(x) return not x and none_resp or x end
        end

        local cNone = check_none(c.none)
        local sNone = check_none(s.none)

        Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))
    end
end

function M:colors()
    local vim_groups = {
        {"Normal", c.fg:dark(.01), c.bg},
        {"NormalFloat", c.fg:dark(.01), c.bg:light(.05)},

        -- Conceal
        {"Conceal", c.black:light()},
        {"VertSplit", c.black:light(.04)},

        {"ErrorMsg", c.fg, c.red},
        {"WarningMsg", c.bg, c.yellow},
        {"Exception", c.red, c.none, s.NONE},

        {"Character", c.green, c.none, s.NONE},
        {"Comment", c.gray:light(.1), c.bg:light(.02), s.NONE},

        -- Search
        {"IncSearch", c.magenta, c.gray},
        {"Search", c.cyan, c.gray},

        {"Define", c.lightcyan:saturate(), c.none, s.NONE},
        {"PreProc", c.lightcyan:saturate(), c.none, s.NONE},

        {"Delimiter", c.cyan, c.none, s.NONE},
        {"Directory", c.cyan},

        {"Identifier", c.fg, c.none, s.NONE},
        {"Include", c.lightcyan:saturate(), c.none, s.NONE},

        {"Statement", c.lightcyan, c.none, s.NONE},
        {"StorageClass", c.cyan, c.none, s.NONE},
        {"Structure", c.cyan, c.none, s.NONE}, 
        {"Title", c.cyan, c.none},
        {"Todo", c.yellow, c.none, s.NONE},
        {"TypeDef", c.magenta, c.none, s.NONE},

        -- Side Column
        {"CursorColumn", c.gray, c.none, s.NONE},
        {"LineNr", c.gray, c.none, s.NONE},
        {"CursorLineNr", c.fg:dark(.1), c.none, s.NONE},
        {"Line", c.none, c.none, s.bold},
        {"SignColumn", c.none, c.none, s.NONE},
        {"ColorColumn", c.none, c.gray},
        {"Cursor", c.gray, c.gray},
        {"CursorLine", c.none, c.bg:light(.05)},
        {"lCursor", c.cyan, c.cyan},

        -- Folds
        {"Folded", c.gray, c.bg},
        {"FoldColumn", c.gray, c.none},

        {"EndOfBuffer", c.gray, c.none},
        {"MatchParen", c.none, c.gray},
        {"NonText", c.bg:light(), c.none},

        -- Popup Menu
        {"PMenu", c.fg, c.gray},
        {"PmenuSbar", c.black, c.brightblack},
        {"PMenuSel", c.magenta:light(.1), c.gray:light()},
        {"PmenuThumb", c.none, c.gray:light()},

        -- Special
        {"Special", c.magenta, c.none, s.NONE},
        {"SpecialChar", c.magenta, c.none, s.NONE},
        {"SpecialKey", c.magenta},
        {"SpecialComment", c.yellow:light(), c.none, s.NONE},

        -- Spell
        {"SpellBad", c.red, c.none},
        {"SpellCap", c.red, c.none},
        {"SpellLocal", c.red, c.none},
        {"SpellRare", c.red, c.none},

        -- Statusline
        {"StatusLine", c.fg:dark(.2), c.bg},
        {"StatusLineNC", c.gray, c.bg},

        -- Tabline
        {"TabLine", c.fg, c.bg},
        {"TabLineSel", c.cyan, c.bg:light()},
        {"TabLineFill", c.fg, c.bg},
        {"Question", c.cyan, c.none, s.bold},

        -- Visual
        {"Visual", c.cyan:light(), c.bg:light()},
        {"VisualNOS", c.magenta, c.bg:light()}
    }

    return merge({
        vim_groups, M:lsp(), M:syntax(), M:markdown(), M:diff(), M:telescope(), M:plugins()
    })
end

function M:lsp()
    return {
        {"LspDiagnosticsDefaultHint", c.blue:light()},
        {"LspDiagnosticsDefaultError", c.red},
        {"LspDiagnosticsDefaultWarning", c.yellow},
        {"LspDiagnosticsDefaultInformation", c.fg}
    }
end

function M:telescope()
    return {
        {"TelescopeBorder", c.gray:light(.05)},
        {"TelescopeNormal", c.fg:light(.3)}, {"TelescopePromptPrefix", c.fg},
        {"TelescopeSelection", c.magenta, c.black, s.bold},
        {"TelescopeMatching", c.magenta}
    }
end

function M:diff()
    return {
        {"DiffAdd", c.green, c.bg}, {"DiffChange", c.yellow, c.bg},
        {"DiffDelete", c.red, c.bg}, {"DiffText", c.fg, c.bg},

        {"GitGutterAdd", c.green, c.bg}, {"GitGutterChange", c.yellow, c.bg},
        {"GitGutterDelete", c.red, c.bg},

        {"NeogitDiffAddHighlight", c.green, c.bg:light(.02)},
        {"NeogitDiffDeleteHighlight", c.red, c.bg:light(.02)},
        {"NeogitDiffContextHighlight", c.fg, c.bg:light(.02)},
        {"NeogitHunkHeaderHighlight", c.fg:dark(.2), c.bg:light(.05)},
        {"NeogitHunkHeader", c.fg:dark(.05), c.bg}
    }
end

function M:markdown()

    local to_groups = highlight_to_groups({c.cyan, c.none})
    local delimiters = to_groups({
        "markdownH1Delimiter", "markdownH2Delimiter", "markdownH3Delimiter",
        "markdownH4Delimiter", "markdownH5Delimiter", "markdownH6Delimiter"
    })

    return merge({
        delimiters, {
            {"markdownh1", c.cyan, c.none, s.bold},
            {"markdownh2", c.cyan, c.none, s.bold},
            {"markdownh3", c.cyan, c.none, s.bold},
            {"markdownh4", c.cyan, c.none, s.bold},
            {"markdownh5", c.cyan, c.none, s.bold},

            {"markdownCodeDelimiter", c.magenta, c.none},
            {"markdownCode", c.blue:light(), c.none},
            {"markdownUrl", c.blue:light(.1)}, {"markdownLinkText", c.magenta},

            {"markdownLinkTextDelimiter", c.gray:light()},
            {"markdownLinkDelimiter", c.gray:light()}
        }
    })
end

function M:syntax()
    local errors = {"TSError", "Error"}
    local punctuation = {"TSPunctDelimiter", "TSPunctBracket", "TSPunctSpecial"}
    local constants = {
        "TSConstant", "TsConstBuiltin", "TSConstMacro", "Constant"
    }
    local constructors = {"TSConstructor"}
    local string = {"TSStringRegex", "TSString", "TSStringEscape", "String"}
    local boolean = {"TSBoolean", "Boolean"}
    local functions = {"TSFunction", "TSFuncBuiltin", "TSFuncMacro", "Function"}
    local methods = {"TSMethod"}
    local fields = {"TSField", "TSProperty", "Property"}
    local number = {"TSNumber", "TSFloat", "Float", "Number"}
    local parameters = {"TSParameter", "TSParameterReference", "Parameter"}
    local operators = {"TSOperator"}
    local forwords = {"TSConditional", "TSRepeat", "Conditional", "Repeat"}
    local keyword = {"TSKeyword", "TSKeywordOperator", "Keyword", "Operator"}
    local types = {"TSType", "TSTypeBuiltin", "Type"}
    local labels = {"TSLabel", "Label"}
    local namespaces = {"TSNamespace"}
    local includes = {"TSInclude"}
    local variables = {"TSVariable", "TSVariableBuiltin"}
    local tags = {"TSTag", "TSTagDelimiter", "Tag"}
    local text = {
        "TSText", "TSStrong", "TSEmphasis", "TSUnderline", "TSTitle",
        "TSLiteral", "TSURI"
    }

    local groups = {
        -- Highlighting errors looks really messy, so don't
        {errors, c.none, c.none, s.none}, {punctuation, c.fg:dark(.25)},
        {constants, c.cyan:light()}, {string, c.green}, {boolean, c.magenta},
        {functions, c.blue:light()}, {methods, c.lightcyan, c.none},
        {fields, c.cyan}, {number, c.magenta}, {parameters, c.cyan},
        {operators, c.blue}, {forwords, c.blue:saturate(.1):light(), c.none},
        {keyword, c.cyan, c.none, s.italic}, {constructors, c.gray:light(.2)},
        {types, c.blue:light(.1)}, {includes, c.cyan},
        {labels, c.blue:saturate(.1):light()}, {namespaces, c.blue:light()},
        {variables, c.fg}, {tags, c.blue:light()}, {text, c.fg}
    }

    local highlights = {}

    -- Apply grouping to each color group
    for _, group in ipairs(groups) do
        highlights = merge({
            highlights,
            highlight_to_groups({group[2], group[3], group[4]})(group[1])
        })
    end

    return merge({
        highlights, {
            {"TSField", c.lightblue}, {"TSTypeBuiltin", c.yellow},
            {"TSVariableBuiltin", c.yellow:light(.03)}
        }
    })
end

function M:plugins()
    -- lukas-reineke/indent-blankline.nvim
    return { {'IndentBlanklineChar', c.gray},
        {'IndentBlanklineSpaceChar', c.gray},
        {'IndentBlanklineSpaceCharBlankline', c.gray},
        {'IndentBlanklineContextChar', c.black}
    }
end

return M
