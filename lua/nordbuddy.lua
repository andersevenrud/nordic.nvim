local Color, c, Group = require('colorbuddy').setup()
local s = require('colorbuddy.style').styles
local M = {}

local b = s.bold
local i = s.italic
local st = s.strikethrough
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
      [0] = '#2e3440',  -- dark black: bg
      [1] = '#3b4252',  -- black
      [2] = '#434c5e',  -- bright black
      [3] = '#4c566a',  -- gray
      -- Snow Storm
      [4] = '#d8dee9',  -- dark white: fg
      [5] = '#e5e9f0',  -- white
      [6] = '#eceff4',  -- bright white
      -- Frost
      [7] = '#8fbcbb',  -- cyan: classes, types and primitives.
      [8] = '#88c0d0',  -- bright cyan: declarations, calls and execution statements of functions, methods and routines.
      [9] = '#81a1c1',  -- blue: keywords, support characters, operators, tags, units, punctuations
      [10] = '#5e81ac', -- intense blue: pragmas, comment keywords and pre-processor statements.
      -- Aurora
      [11] = '#bf616a', -- red: deletions and errors
      [12] = '#d08770', -- orange: annotations and decorators
      [13] = '#ebcb8b', -- yellow: modifications, warning and escape characters
      [14] = '#a3be8c', -- green: additions and string
      [15] = '#b48ead'  -- purple: integers and floating point numbers
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

   if vim.g.nord_italic ~= nil and not vim.g.nord_italic then
      i = sno
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
      M:standard(),
      M:lsp(),
      M:syntax(),
      M:plugins(),
   })
end

function M:standard()
   return {
      --- Attributes ---
      {"Bold", cno, cno, b},
      {"Italic", cno, cno, i},
      {"Underline", cno, cno, ul},
      --- Editor---
      {'ColorColumn', cno, c.nord1},
      {'Conceal', c.nord4, c.nord0},
      {'Cursor', c.nord0, c.nord4},
      {'CursorLine', cno, c.nord1},
      {'Error', c.nord4, c.nord11},
      {'LineNr', c.nord3},
      {'MatchParen', c.nord8, c.nord3},
      {'NonText', c.nord2},
      {'Normal', c.nord4, c.nord0},
      {'NormalFloat', c.nord5, c.nord1},
      {'NormalNC', c.nord4, cno},
      {'Pmenu', c.nord4, c.nord2},
      {'PmenuSbar', c.nord4, c.nord2},
      {'PmenuSel', c.nord8, c.nord3, b},
      {'PmenuThumb', c.nord8, c.nord3},
      {'RedrawDebugClear', c.nord4, c.nord13},
      {'RedrawDebugComposed', c.nord4, c.nord14},
      {'RedrawDebugNormal', c.nord0, c.nord4},
      {'RedrawDebugRecompose', c.nord4, c.nord11},
      {'SpecialKey', c.nord3},
      {'SpellBad', c.nord11, cno, uc},
      {'SpellCap', c.nord13, cno, uc},
      {'SpellLocal', c.nord5, cno, uc},
      {'SpellRare', c.nord6, cno, uc},
      {'VertSplit', c.nord1},
      {'Visual', cno, c.nord2},
      {'VisualNC', cno, c.nord2},
      {'VisualNOS', cno, c.nord2},
      {'iCursor', c.nord0, c.nord4},
      --- Neovim ---
      {'NvimInternalError', c.nord11, c.nord11},
      {'TermCursorNC', cno, c.nord1},
      {'healthError', c.nord11, c.nord1},
      {'healthSuccess', c.nord14, c.nord1},
      {'healthWarning', c.nord13, c.nord1},
      --- Diff ---
      {'DiffAdd', c.nord14, c.nord1},
      {'DiffChange', c.nord13, c.nord1},
      {'DiffDelete', c.nord11, c.nord1},
      {'DiffText', c.nord11, c.nord1},
      --- Gutter ---
      {'CursorColumn', cno, c.nord1},
      {'CursorLineNr', c.nord4, c.nord1},
      {'FoldColumn', c.nord3, c.nord0},
      {'Folded', c.nord3, c.nord1, b},
      {'SignColumn', c.nord1, c.nord0},
      -- Navigation ---
      {'Directory', c.nord8},
      --- Prompt/Status ---
      {'EndOfBuffer', c.nord1},
      {'ErrorMsg', c.nord4, c.nord11},
      {'ModeMsg', c.nord4},
      {'MoreMsg', c.nord8},
      {'Question', c.nord4},
      {'StatusLine', c.nord8, c.nord3},
      {'StatusLineNC', c.nord4, c.nord1},
      {'StatusLineTerm', c.nord8, c.nord3},
      {'StatusLineTermNC', c.nord4, c.nord1},
      {'WarningMsg', c.nord0, c.nord13},
      {'WildMenu', c.nord8, c.nord1},
      --- Search ---
      {'IncSearch', c.nord6, c.nord10, ul},
      {'Search', c.nord1, c.nord8},
      --- Tabs ---
      {'TabLine', c.nord4, c.nord1},
      {'TabLineFill', c.nord4, c.nord1},
      {'TabLineSel', c.nord8, c.nord3},
      --- Window ---
      {'Title', c.nord4, cno, b},
      --- Others ---
      {'qffilename', c.nord13, cno, sno},
      {'Whitespace', c.nord4},
   }
end

function M:lsp()
   return {
      {'LspDiagnosticsDefaultError', c.nord11},
      {'LspDiagnosticsDefaultHint', c.nord10},
      {'LspDiagnosticsDefaultInformation', c.nord8},
      {'LspDiagnosticsDefaultWarning', c.nord13},
      {'LspDiagnosticsUnderlineError', c.nord11, cno, uc},
      {'LspDiagnosticsUnderlineHint', c.nord10, cno, uc},
      {'LspDiagnosticsUnderlineInformation', c.nord8, cno, uc},
      {'LspDiagnosticsUnderlineWarning', c.nord13, cno, uc},
      {'LspReferenceRead', c.nord5},
      {'LspReferenceText', c.nord4},
      {'LspReferenceWrite', c.nord6},
   }
end

   --[[ local to_groups = highlight_to_groups({c.nord8, cno})
   local delimiters = to_groups({
      'markdownH1Delimiter',
      'markdownH2Delimiter',
      'markdownH3Delimiter',
      'markdownH4Delimiter',
      'markdownH5Delimiter',
      'markdownH6Delimiter',
   })

   to_groups = highlight_to_groups({c.nord8, cno, b})
   local headers = to_groups({
      'markdownH1',
      'markdownH2',
      'markdownH3',
      'markdownH4',
      'markdownH5',
      'markdownH6',
   })

   return merge({
      delimiters,
      headers,
      {
      {'markdownBlockquote', c.nord7},
      {'markdownCode', c.nord7},
      {'markdownCodeDelimiter', c.nord7},
      {'markdownFootnote', c.nord7},
      {'markdownFootnoteDefinition', c.nord7},
      {'markdownId', c.nord7},
      {'markdownIdDeclaration', c.nord7},
      {'markdownIdDelimiter', c.nord9},
      {'markdownLinkDelimiter', c.nord9},
      {'markdownLinkText', c.nord8},
      {'markdownLinkTextDelimiter', c.nord9},
      {'markdownUrl', c.nord4},
      }
   }) ]]

function M:syntax()
   local attributes = {
      -- TS
      'TSAnnotation',
      'TSAttribute',
   }
   local comments = {
      -- TS
      'TSComment',
      -- VL
      'Comment',
      -- man
      'manFooter',
   }
   local errors = {
      -- TS
      'TSError',
      -- VL
      'Error',
   }
   local fields = {
      -- TS
      'TSField',
      'TSProperty',
      'TSTag',
      -- VL
      'Tag',
   }
   local functions = {
      -- TS
      'TSConstructor',
      'TSFuncBuiltin',
      'TSFuncMacro',
      'TSFunction',
      'TSMethod',
      -- VL
      'Function',
   }
   local keywords = {
      -- TS
      'TSConditional',
      'TSConstBuiltin',
      'TSInclude',
      'TSKeyword',
      'TSKeywordFunction',
      'TSLabel',
      'TSOperator',
      'TSRepeat',
      'TSVariableBuiltin',
      -- VL
      'Conditional',
      'Include',
      'Keyword',
      'Label',
      'Operator',
      'PreCondit',
      'PreProc',
      'Repeat',
      'Statement',
   }
   local numbers = {
      -- TS
      'TSBoolean',
      'TSFloat',
      'TSNumber',
      'TSURI',
      -- VL
      'Boolean',
      'Float',
      'Number',
   }
   local parameters = {
      -- TS
      'TSParameter',
      'TSParameterReference',
   }
   local punctuations = {
      -- TS
      'TSPunctBracket',
      'TSPunctDelimiter',
      'TSPunctSpecial',
      'TSTagDelimiter',
      -- VL
      'Delimiter',
   }
   local strings = {
      -- TS
      'TSCharacter',
      'TSEmphasis',
      'TSLiteral',
      'TSStrike',
      'TSString',
      'TSStrong',
      'TSText',
      'TSTitle',
      'TSUnderline',
      -- VL
      'Character',
      'String',
      'Text',
   }
   local symbols = {
      -- TS
      'TSNote',
      'TSStriingEscape',
      'TSStringRegex',
      'TSSymbol',
      -- VL
      'Special',
      'SpecialChar',
      'SpecialComment',
      'Todo',
   }
   local types = {
      -- TS
      'TSException',
      'TSType',
      'TSTypeBuiltin',
      -- VL
      'Exception',
      'StorageClass',
      'Structure',
      'Type',
      'Typedef',
   }
   local variables = {
      -- TS
      'TSConstMacro',
      'TSConstant',
      'TSNamespace',
      'TSVariable',
      -- VL
      'Constant',
      'Define',
      'Identifier',
      'Macro',
   }
   local warnings = {
      -- TS
      'TSDanger',
      'TSWarning',
      -- VL
      'Debug',
   }
   local styled_bold = {
      -- TS
      'TSStrong',
      'TSTitle',
   }
   local styled_italics ={
      -- TS
      'TSEmphasis',
      'TSFuncBuiltin',
      'TSNamespace',
      'TSTypeBuiltin',
   }
   local styled_strikethrough = {
      -- TS
      'TSStrike',
   }
   local styled_underline = {
      -- TS
      'TSUnderline',
   }
   local groups = {
      {attributes, c.nord12},
      {comments, c.nord3:light(), cno, i},
      {errors, c.nord11},
      -- {fields, cno, cno, b},
      {functions, c.nord8},
      {keywords, c.nord9},
      {numbers, c.nord15},
      {parameters, c.nord5, cno, b},
      {punctuations, c.nord6},
      {strings, c.nord14},
      {symbols, c.nord13},
      {types, c.nord7},
      {variables, c.nord4},
      {warnings, c.nord13},
      {styled_bold, cno, cno, b},
      {styled_italics, cno, cno, i},
      {styled_strikethrough, cno, cno, st},
      {styled_underline, cno, cno, ul},
   }

   local highlights = {}

   -- Apply grouping to each color group
   for _, group in ipairs(groups) do
      highlights = merge({
         highlights,
         highlight_to_groups({group[2], group[3], group[4]})(group[1])
      })
   end

   return highlights
end

function M:plugins()
   -- lewis6991/gitsigns.nvim
   local gitsigns = {
      {'GitSignsAdd', c.nord14, c.nord0},
      {'GitSignsChange', c.nord13, c.nord0},
      {'GitSignsDelete', c.nord11, c.nord0},
   }
   -- phaazon/hop.nvim
   local hop = {
      {'HopNextKey', c.nord7},
      {'HopNextKey1', c.nord9},
      {'HopNextKey2', c.nord11},
      {'HopUnmatched', c.nord3},
   }
   -- lukas-reineke/indent-blankline.nvim
   local indent_blankline = {
      {'IndentBlanklineChar', c.nord3},
      {'IndentBlanklineContextChar', c.nord1},
      {'IndentBlanklineSpaceChar', c.nord3},
      {'IndentBlanklineSpaceCharBlankline', c.nord4},
   }
   -- TimUntersberger/neogit
   local neogit = {
      {'NeogitDiffAddHighlight', c.nord14, c.nord1},
      {'NeogitDiffContextHighlight', c.nord13, c.nord0},
      {'NeogitDiffDeleteHighlight', c.nord11, c.nord1},
      {'NeogitHunkHeader', c.nord3:light(), c.nord0},
      {'NeogitHunkHeaderHighlight', c.nord3:light(), c.nord0},
   }
   -- vim-pandoc/vim-pandoc-syntax
   local pandoc = {
      {'pandocAtxHeader', c.nord7, cno, b},
      {'pandocAtxHeaderMark', c.nord7, cno, b},
      {'pandocAtxHeaderStart', c.nord7, cno, b},
      {'pandocFootnoteID', c.nord7},
      {'pandocFootnoteIDHead', c.nord7},
      {'pandocFootnoteIDTail', c.nord7},
      {'pandocReferenceLabel', c.nord8},
      {'pandocReferenceURL', c.nord4},
   }
   -- simrat39/symbols-outline.nvim
   local symbols_outline = {
      {'FocusedSymbol', c.nord6, c.nord10, ul},
   }
   -- nvim-telescope/telescope.nvim
   local telescope = {
      {'TelescopeBorder', c.nord3},
      {'TelescopeMatching', c.nord8, c.nord3},
      {'TelescopeNormal', c.nord4},
      {'TelescopePromptPrefix', c.nord4},
      {'TelescopeSelection', c.nord8, c.nord3, b},
   }

   return merge({
      gitsigns,
      hop,
      indent_blankline,
      neogit,
      pandoc,
      symbols_outline,
      telescope,
   })
end

return M
