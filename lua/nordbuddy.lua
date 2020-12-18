-- Colorscheme
local Color, c, Group = require'colorbuddy'.setup()
local s = require'colorbuddy.style'.styles
local M = {}

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
  vim.cmd('set termguicolors')
  vim.cmd('hi! clear')
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
  return {

    -- Vim Groups
    {"IncSearch",c.brightwhite,c.blue,s.underline},
    {"Search",c.black,c.cyan},
    {"TermCursorNC",c.black,c.black},
    {'Boolean', c.lightblue, c.none},
    {'Character', c.green, c.none},
    {'ColorColumn', c.none, c.black},
    {'Comment', c.gray, c.none},
    {'Conditional', c.blue, c.none},
    {'Constant', c.cyan, c.none},
    {'Cursor', c.bg, c.white},
    {'CursorColumn', c.none, c.black},
    {'CursorLine', c.none, c.black},
    {'CursorLineNr', c.white, c.none},
    {'Define', c.lightblue, c.none},
    {'Delimeter', c.brightwhite, c.none},
    {'Directory', c.cyan, c.none},
    {'EndOfBuffer', c.black, c.none},
    {'Error', c.red, c.none},
    {'ErrorMsg', c.red, c.none},
    {'Exception', c.lightblue, c.none},
    {'Float', c.magenta, c.none},
    {'FoldColumn', c.gray, c.bg},
    {'Folded', c.gray, c.bg},
    {'Function', c.cyan, c.none},
    {'Identifier', c.white, c.none},
    {'Include', c.blue, c.none},
    {'Keyword', c.magenta, c.none},
    {'Label', c.lightblue, c.none},
    {'LineNr', c.gray, c.none},
    {'Macro', c.lightblue, c.none},
    {'MatchParen', c.cyan, c.gray},
    {'ModeMsg', c.white, c.none},
    {'MoreMsg', c.cyan, c.none},
    {'NonText', c.brightblack, c.none},
    {'Normal', c.white, c.bg},
    {'NormalFloat', c.white, c.black},
    {'Number', c.magenta, c.none},
    {'Operator', c.lightblue, c.none},
    {'Pmenu', c.white, c.brightblack},
    {'PmenuSbar', c.white, c.brightblack},
    {'PmenuSel', c.cyan, c.gray},
    {'PmenuThumb', c.cyan, c.gray},
    {'PreCondit', c.lightblue, c.none},
    {'PreProc', c.lightblue, c.none},
    {'Question', c.white, c.none},
    {'QuickFixLine', c.bg, c.yellow},
    {'RedrawDebugClear', c.fg, c.yellow},
    {'RedrawDebugComposed', c.fg, c.green},
    {'RedrawDebugNormal', c.bg, c.white},
    {'RedrawDebugRecompose', c.fg, c.red},
    {'Repeat', c.lightblue, c.none},
    {'SignColumn', c.black, c.bg},
    {'SignatureMarkText', c.cyan, c.bg},
    {'SignatureMarkerText', c.yellow, c.bg},
    {'Special', c.blue, c.none},
    {'SpecialChar', c.yellow, c.none},
    {'SpecialComment', c.cyan, c.none},
    {'SpecialKey', c.gray, c.none},
    {'SpellBad', c.red, c.bg},
    {'SpellCap', c.yellow, c.cyan},
    {'SpellLocal', c.white, c.bg},
    {'SpellRare', c.brightwhite, c.bg},
    {'Statement', c.blue, c.none},
    {'StatusLine', c.brightwhite, c.gray},
    {'StatusLineNC', c.white, c.gray},
    {'StatusLineTerm', c.cyan, c.gray},
    {'StatusLineTermNC', c.white, c.gray},
    {'StorageClass', c.lightblue, c.none},
    {'String', c.green, c.none},
    {'Structure', c.yellow, c.none},
    {'TabLine', c.white, c.bg},
    {'TabLineFill', c.white, c.bg},
    {'TabLineSel', c.cyan, c.gray},
    {'Tag', c.white, c.none},
    {'Terminal', c.brightwhite, c.bg},
    {'Title', c.white, c.none},
    {'Todo', c.yellow, c.none},
    {'Type', c.lightblue, c.none},
    {'Typedef', c.lightblue, c.none},
    {'Underlined', c.cyan, c.none, s.underline},
    {'VertSplit', c.brightblack, c.bg},
    {'Visual', c.none, c.brightblack},
    {'VisualNOS', c.none, c.brightblack},
    {'WarningMsg', c.bg, c.yellow},
    {'WarningMsg',c.white,c.orange,s.NONE},
    {'WildMenu', c.cyan, c.black},

    -- Neovim Groups
    {'NvimInternalError', c.fg, c.red},

    -- Health Checks
    {'healthError', c.red, c.black},
    {'healthSuccess', c.green, c.black},
    {'healthWarning', c.yellow, c.black},


    -- Diffs
    {'DiffAdd', c.green, c.black},
    {'DiffChange', c.yellow, c.black},
    {'DiffDelete', c.red, c.black},
    {'DiffText', c.lightblue, c.black},
    {'debugBreakpoint', c.red, c.none},
    {'debugPc', c.none, c.lightcyan},
    {'diffAdded', c.green, c.black},
    {'diffChanged', c.yellow, c.black},
    {'diffFile', c.black, c.none},
    {'diffFileId', c.blue, c.none},
    {'diffNewFile', c.green, c.none},
    {'diffOldFile', c.red, c.none},
    {'diffRemoved', c.red, c.black},
    {'gitconfigVariable', c.lightcyan, c.none},

    -- Treesitter
    {'TSAnnotation', c.orange, c.none},
    {'TSAttribute', c.lightcyan, c.none},
    {'TSBoolean', c.lightblue, c.none},
    {'TSCharacter', c.green, c.none},
    {'TSConditional', c.blue, c.none},
    {'TSConstBuiltin', c.lightblue, c.none},
    {'TSConstMacro', c.lightcyan, c.none},
    {'TSConstant', c.cyan, c.none},
    {'TSConstructor', c.white, c.none},
    {'TSEmphasis', c.yellow, c.none},
    {'TSError', c.red, c.none},
    {'TSException', c.lightblue, c.none},
    {'TSField', c.cyan, c.none},
    {'TSFloat', c.magenta, c.none},
    {'TSFuncBuiltin', c.cyan, c.none},
    {'TSFuncMacro', c.cyan, c.none},
    {'TSFunction', c.lightblue, c.none},
    {'TSInclude', c.blue, c.none},
    {'TSKeyword', c.magenta, c.none},
    {'TSKeywordFunction', c.lightblue, c.none},
    {'TSKeywordOperator', c.blue, c.none},
    {'TSLabel', c.cyan, c.none},
    {'TSLiteral', c.yellow, c.none},
    {'TSMethod', c.cyan, c.none},
    {'TSNamespace', c.blue, c.none},
    {'TSNumber', c.magenta, c.none},
    {'TSOperator', c.lightblue, c.none},
    {'TSParameter', c.white, c.none},
    {'TSParameterReference', c.lightblue, c.none},
    {'TSProperty', c.lightblue, c.none},
    {'TSPunctBracket', c.brightwhite, c.none},
    {'TSPunctDelimiter', c.lightblue, c.none},
    {'TSPunctSpecial', c.magenta, c.none},
    {'TSRepeat', c.blue, c.none},
    {'TSString', c.green, c.none},
    {'TSStringEscape', c.cyan, c.none},
    {'TSStringRegex', c.green, c.none},
    {'TSStrong', c.yellow, c.none},
    {'TSStructure', c.blue, c.none},
    {'TSTag', c.lightblue, c.none},
    {'TSTagDelimiter', c.gray, c.none},
    {'TSText', c.yellow, c.none},
    {'TSTitle', c.yellow, c.none},
    {'TSType', c.lightcyan, c.none},
    {'TSTypeBuiltin', c.lightblue, c.none},
    {'TSURI', c.yellow, c.none},
    {'TSUnderline', c.none, c.none, s.underline},
    {'TSVariable', c.cyan, c.none},
    {'TSVariableBuiltin', c.yellow, c.none},

    -- HTML
    {'htmlArg', c.cyan, c.none},
    {'htmlBold', c.cyan, c.none},
    {'htmlEndTag', c.brightwhite, c.none},
    {'htmlH1', c.blue, c.none},
    {'htmlH2', c.blue, c.none},
    {'htmlH3', c.blue, c.none},
    {'htmlH4', c.blue, c.none},
    {'htmlH5', c.blue, c.none},
    {'htmlH6', c.blue, c.none},
    {'htmlItalic', c.magenta, c.none},
    {'htmlLink', c.lightcyan, c.none},
    {'htmlSpecialChar', c.cyan, c.none},
    {'htmlSpecialTagName', c.blue, c.none},
    {'htmlTag', c.brightwhite, c.none},
    {'htmlTagN', c.blue, c.none},
    {'htmlTagName', c.blue, c.none},
    {'htmlTitle', c.brightwhite, c.none},

    -- Markdown
    {'markdownBlockquote', c.gray, c.none},
    {'markdownBold', c.cyan, c.none, s.bold},
    {'markdownCode', c.cyan, c.none},
    {'markdownCodeBlock', c.cyan, c.none},
    {'markdownCodeDelimiter', c.cyan, c.none},
    {'markdownH1', c.cyan, c.none},
    {'markdownH2', c.cyan, c.none},
    {'markdownH3', c.cyan, c.none},
    {'markdownH4', c.cyan, c.none},
    {'markdownH5', c.cyan, c.none},
    {'markdownH6', c.cyan, c.none},
    {'markdownHeadingDelimiter', c.cyan, c.none},
    {'markdownHeadingRule', c.gray, c.none},
    {'markdownId', c.magenta, c.none},
    {'markdownIdDeclaration', c.blue, c.none},
    {'markdownIdDelimiter', c.magenta, c.none},
    {'markdownItalic', c.magenta, c.none, s.italic},
    {'markdownLinkDelimiter', c.magenta, c.none},
    {'markdownLinkText', c.blue, c.none},
    {'markdownListMarker', c.blue, c.none},
    {'markdownOrdenord11ListMarker', c.red, c.none},
    {'markdownRule', c.gray, c.none},
    {'markdownUrl', c.lightcyan, c.none},

    -- Git
    {'GitGutterAdd', c.green, c.none},
    {'GitGutterChange', c.yellow, c.none},
    {'GitGutterChangeDelete', c.red, c.none},
    {'GitGutterDelete', c.red, c.none},
    {'gitcommitDiscardedFile', c.red, c.none},
    {'gitcommitSelectedFile', c.green, c.none},
    {'gitcommitUntrackedFile', c.red, c.none},

    -- LSP
    {'LSPDiagnosticsDefaultWarning', c.yellow, c.none},
    {'LspDiagnosticsDefaultError', c.red, c.none},
    {'LspDiagnosticsDefaultHint', c.lightblue, c.none},
    {'LspDiagnosticsDefaultInformation', c.cyan, c.none},
    {'LspDiagnosticsUnderlineError', c.none, c.none, s.underline},
    {'LspDiagnosticsUnderlineHint', c.none, c.none, s.underline},
    {'LspDiagnosticsUnderlineInformation', c.none, c.none, s.underline},
    {'LspDiagnosticsUnderlineWarning', c.none, c.none, s.underline},

    -- Telescope
    {'TelescopeBorder', c.gray},
    {'TelescopeMatching', c.magenta},
    {'TelescopeNormal', c.fg, c.bg},
    {'TelescopePromptPrefix', c.fg:dark(.2)},
    {'TelescopeSelection', c.magenta, c.brightblack, s.NONE},
  }
end

return M
