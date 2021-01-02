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

function M:setup()
  Color.new('fg',          '#D8DEE9')
  Color.new('bg',          '#2E3440')
  Color.new('black',       '#3B4252')
  Color.new('brightblack', '#434C5E')
  Color.new('gray',        '#4C566A')
  Color.new('white',       '#E5E9F0')
  Color.new('brightwhite', '#ECEFF4')
  Color.new('lightcyan',   '#8FBCBB')
  Color.new('cyan',        '#88C0D0')
  Color.new('lightblue',   '#81A1C1')
  Color.new('blue',        '#5E81AC')
  Color.new('red',         '#BF616A')
  Color.new('orange',      '#D08770')
  Color.new('yellow',      '#EBCB8B')
  Color.new('green',       '#A3BE8C')
  Color.new('magenta',     '#B48EAD')
end

function M:use()
  vim.cmd("set termguicolors")
  vim.cmd("hi! clear")
  M.setup(self)

  for _, group in ipairs(M:colors()) do
    local check_none = function(none_resp)
      return function(x)
        return not x and none_resp or x
      end
    end

    local cNone = check_none(c.none)
    local sNone = check_none(s.none)

    Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))
  end
end

function M:colors()
  local vim_groups = {
    {"Normal", c.fg:dark(.01), c.bg},
    {"NormalFloat", c.fg:dark(.01), c.bg:light(.01)},

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
    {"StatusLine", c.fg, c.bg},
    {"StatusLineNC", c.fg:dark(.2), c.bg},

    -- Tabline
    {"TabLine", c.fg, c.bg},
    {"TabLineSel", c.cyan, c.bg:light()},
    {"TabLineFill", c.fg, c.bg},

    {"Question", c.cyan, c.none, s.bold},

    -- Visual
    {"Visual", c.cyan:light(), c.bg:light()},
    {"VisualNOS", c.magenta, c.bg:light()},
  }

  return merge({
    vim_groups,
    M:lsp(),
    M:syntax(),
    M:markdown(),
    M:diff(),
    M:telescope(),
  })
end

function M:lsp()
  return {
    {"LspDiagnosticsDefaultHint", c.blue:light()},
    {"LspDiagnosticsDefaultError", c.red},
    {"LspDiagnosticsDefaultWarning", c.yellow},
    {"LspDiagnosticsDefaultInformation", c.fg},
  }
end

function M:telescope()
  return {
    {"TelescopeBorder", c.gray:light(.05)},
    {"TelescopeNormal", c.fg:light(.3)},
    {"TelescopePromptPrefix", c.fg},
    {"TelescopeSelection", c.magenta, c.black, s.bold},
    {"TelescopeMatching", c.magenta},
  }
end

function M:diff()
  return {
    {"DiffAdd", c.none, c.green},
    {"DiffChange", c.none, c.yellow},
    {"DiffDelete", c.none, c.red},
    {"DiffText", c.none, c.fg},

    {"GitGutterAdd", c.green, c.bg},
    {"GitGutterChange", c.yellow, c.bg},
    {"GitGutterDelete", c.red, c.bg},
  }
end

function M:markdown()

  local to_groups = highlight_to_groups({c.cyan, c.none})
  local delimiters = to_groups({
    "markdownH1Delimiter",
    "markdownH2Delimiter",
    "markdownH3Delimiter",
    "markdownH4Delimiter",
    "markdownH5Delimiter",
    "markdownH6Delimiter",
  })

  return merge({
    delimiters,
    {
      {"markdownh1", c.cyan, c.none, s.bold},
      {"markdownh2", c.cyan, c.none, s.bold},
      {"markdownh3", c.cyan, c.none, s.bold},
      {"markdownh4", c.cyan, c.none, s.bold},
      {"markdownh5", c.cyan, c.none, s.bold},

      {"markdownCodeDelimiter", c.magenta, c.none},
      {"markdownCode", c.blue:light(), c.none},
      {"markdownUrl", c.blue:light(.1)},
      {"markdownLinkText", c.magenta},

      {"markdownLinkTextDelimiter", c.gray:light()},
      {"markdownLinkDelimiter", c.gray:light()},
    },
  })
end

function M:syntax()
  local error = {"TSError", "Error"}
  local punctuation = {"TSPunctDelimiter", "TSPunctBracket", "TSPunctSpecial"}
  local constants = {"TSConstant", "TsConstBuiltin", "TSConstMacro", "Constant"}
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
  local text = {"TSText", "TSStrong", "TSEmphasis", "TSUnderline", "TSTitle", "TSLiteral", "TSURI"}

  local groups = {
    -- Highlighting errors looks really messy, so don't
    {error, c.none, c.none, s.none},

    {punctuation, c.fg:dark(.25)},
    {constants, c.cyan:light()},
    {string, c.green},
    {boolean, c.magenta},
    {functions, c.blue:light()},
    {methods, c.lightcyan, c.none},
    {fields, c.cyan},
    {number, c.magenta},
    {parameters, c.cyan},
    {operators, c.blue},
    {forwords, c.blue:saturate(.1):light(), c.none},
    {keyword, c.cyan, c.none, s.italic},
    {constructors, c.gray:light(.2)},
    {types, c.blue:light(.1)},
    {includes, c.cyan},
    {labels, c.blue:saturate(.1):light()},
    {namespaces, c.blue:light()},
    {variables, c.fg},
    {tags, c.blue:light()},
    {text, c.fg},
  }

  local highlights = {}

  -- Apply grouping to each color group
  for _, group in ipairs(groups) do
    highlights = merge({highlights, highlight_to_groups({group[2], group[3], group[4]})(group[1])})
  end

  return merge({
    highlights,
    {
      {"TSField", c.lightblue},
      {"TSTypeBuiltin", c.yellow},
      {"TSVariableBuiltin", c.yellow:light(.03)},
    },
  })
end

return M
