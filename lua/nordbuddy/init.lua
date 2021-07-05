local palette = require('nordbuddy.palette')
local vim = vim

local function highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

local function initialize()
  vim.g.colors_name = 'nordbuddy'
  vim.g.terminal_color_0  = palette[1]
  vim.g.terminal_color_1  = palette[11]
  vim.g.terminal_color_2  = palette[14]
  vim.g.terminal_color_3  = palette[13]
  vim.g.terminal_color_4  = palette[9]
  vim.g.terminal_color_5  = palette[15]
  vim.g.terminal_color_6  = palette[8]
  vim.g.terminal_color_7  = palette[5]
  vim.g.terminal_color_8  = palette[3]
  vim.g.terminal_color_9  = palette[11]
  vim.g.terminal_color_10 = palette[14]
  vim.g.terminal_color_11 = palette[13]
  vim.g.terminal_color_12 = palette[9]
  vim.g.terminal_color_13 = palette[15]
  vim.g.terminal_color_14 = palette[7]
  vim.g.terminal_color_15 = palette[6]

  s = {}
  s.underline = "underline"
  s.bold = "bold"
  c = {}
  c.none = "none"
  c.nord1 = palette[1]
  c.nord2 = palette[2]
  c.nord3 = palette[3]
  c.nord4 = palette[4]
  c.nord5 = palette[5]
  c.nord6 = palette[6]
  c.nord7 = palette[7]
  c.nord8 = palette[8]
  c.nord9 = palette[9]
  c.nord10 = palette[10]
  c.nord11 = palette[11]
  c.nord12 = palette[12]
  c.nord13 = palette[13]
  c.nord14 = palette[14]
  c.nord15 = palette[15]

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "nordbuddy"

  -- ==========================================================================
  -- STANDARD
  -- ==========================================================================
  highlight('ColorColumn', { fg = c.none, bg = c.nord1 })
  highlight('Cursor', { fg = c.nord0, bg = c.nord4 })
  highlight('CursorLine', { fg = c.none, bg = c.nord1 })
  highlight('Error', { fg = c.nord4, bg = c.nord11 })
  highlight('iCursor', { fg = c.nord0, bg = c.nord4 })
  highlight('LineNr', { fg = c.nord3 })
  highlight('MatchParen', { fg = c.nord8, bg = c.nord3 })
  highlight('NonText', { fg = c.nord2 })
  highlight('Normal', { fg = c.nord4, bg = c.nord0 })
  highlight('PMenu', { fg = c.nord4, bg = c.nord2 })
  highlight('PmenuSbar', { fg = c.nord4, bg = c.nord2 })
  highlight('PMenuSel', { fg = c.nord8, bg = c.nord3, style = s.bold })
  highlight('PmenuThumb', { fg = c.nord8, bg = c.nord3 })
  highlight('SpecialKey', { fg = c.nord3 })
  highlight('SpellBad', { fg = c.nord11, bg = c.none, style = s.underline })
  highlight('SpellCap', { fg = c.nord13, bg = c.none, style = s.underline })
  highlight('SpellLocal', { fg = c.nord5, bg = c.none, style = s.underline })
  highlight('SpellRare', { fg = c.nord6, bg = c.none, style = s.underline })
  highlight('Visual', { fg = c.none, bg = c.nord2 })
  highlight('VisualNOS', { fg = c.none, bg = c.nord2 })
  highlight('VertSplit', { fg = c.nord1 })
  highlight('VisualNC', { fg = c.none, bg = c.nord2 })
  highlight('NormalNC', { fg = c.nord4, bg = c.none })
  highlight('NormalFloat', { fg = c.nord5, bg = c.nord1 })
  highlight('RedrawDebugNormal', { fg = c.nord0, bg = c.nord4 })
  highlight('RedrawDebugClear', { fg = c.nord4, bg = c.nord13 })
  highlight('RedrawDebugComposed', { fg = c.nord4, bg = c.nord14 })
  highlight('RedrawDebugRecompose', { fg = c.nord4, bg = c.nord11 })
  highlight('healthError', { fg = c.nord11, bg = c.nord1 })
  highlight('healthSuccess', { fg = c.nord14, bg = c.nord1 })
  highlight('healthWarning', { fg = c.nord13, bg = c.nord1 })
  highlight('TermCursorNC', { fg = c.none, bg = c.nord1 })
  highlight('NvimInternalError', { fg = c.nord11, bg = c.nord11 })
  highlight('CursorColumn', { fg = c.none, bg = c.nord1 })
  highlight('CursorLineNr', { fg = c.nord4, bg = c.nord1 })
  highlight('Folded', { fg = c.nord3, bg = c.nord0 })
  highlight('FoldColumn', { fg = c.nord3, bg = c.nord0 })
  highlight('SignColumn', { fg = c.nord1, bg = c.nord0 })
  highlight('Directory', { fg = c.nord8 })
  highlight('EndOfBuffer', { fg = c.nord1 })
  highlight('ErrorMsg', { fg = c.nord4, bg = c.nord11 })
  highlight('ModeMsg', { fg = c.nord4 })
  highlight('MoreMsg', { fg = c.nord8 })
  highlight('Question', { fg = c.nord4 })
  highlight('StatusLine', { fg = c.nord8, bg = c.nord3 })
  highlight('StatusLineNC', { fg = c.nord4, bg = c.nord1 })
  highlight('StatusLineTerm', { fg = c.nord8, bg = c.nord3 })
  highlight('StatusLineTermNC', { fg = c.nord4, bg = c.nord1 })
  highlight('WarningMsg', { fg = c.nord0, bg = c.nord13 })
  highlight('WildMenu', { fg = c.nord8, bg = c.nord1 })
  highlight('IncSearch', { fg = c.nord6, bg = c.nord10, style = s.underline })
  highlight('Search', { fg = c.nord1, bg = c.nord8 })
  highlight('TabLine', { fg = c.nord4, bg = c.nord1 })
  highlight('TabLineFill', { fg = c.nord4, bg = c.nord1 })
  highlight('TabLineSel', { fg = c.nord8, bg = c.nord3 })
  highlight('Title', { fg = c.nord4, bg = c.none, style = s.bold })
  highlight('qffilename', { fg = c.nord13, bg = c.none, style = s.none })
  highlight('Whitespace', { fg = c.nord4 })

  -- ==========================================================================
  -- Treesitter
  -- ==========================================================================
  highlight('TSAnnotation', { fg = c.nord9 })
  highlight('TSAttribute', { fg = c.nord9 })

  highlight('TSBoolean', { fg = c.nord15 })
  highlight('TSFloat', { fg = c.nord15 })
  highlight('TSNumber', { fg = c.nord15 })
  highlight('Boolean', { fg = c.nord15 })
  highlight('Float', { fg = c.nord15 })
  highlight('Number', { fg = c.nord15 })

  highlight('TSComment', { fg = c.nord3, bg = c.none })
  highlight('Comment', { fg = c.nord3, bg = c.none })
  highlight('manFooter', { fg = c.nord3, bg = c.none })
  highlight('rustCommentLine', { fg = c.nord3, bg = c.none })
  highlight('rustCommentBlock', { fg = c.nord3, bg = c.none })
  highlight('vimCommentTitle', { fg = c.nord3, bg = c.none })
  highlight('vimCommentLine', { fg = c.nord3, bg = c.none })

  highlight('TSConstructor', { fg = c.nord4, bg = c.none, style = s.italic })

  highlight('TSConditional', { fg = c.nord10, bg = c.none, style = s.italic })
  highlight('Conditional', { fg = c.nord10, bg = c.none, style = s.italic })
  highlight('PreCondit', { fg = c.nord10, bg = c.none, style = s.italic })
  highlight('cPreCondit', { fg = c.nord10, bg = c.none, style = s.italic })
  highlight('cPreConditMatch', { fg = c.nord10, bg = c.none, style = s.italic })

  highlight('TSConstant', { fg = c.nord4 })
  highlight('Constant', { fg = c.nord4 })
  highlight('cConstant', { fg = c.nord4 })
  highlight('cppConstant', { fg = c.nord4 })

  highlight('TSConstMacro', { fg = c.nord10 })
  highlight('Define', { fg = c.nord10 })
  highlight('Macro', { fg = c.nord10 })

  highlight('TSException', { fg = c.nord9 })
  highlight('Exception', { fg = c.nord9 })

  highlight('TSField', { fg = c.nord9, style = c.none })
  highlight('TSProperty', { fg = c.nord9, style = c.none })
  highlight('TSTag', { fg = c.nord9, style = c.none })
  highlight('Tag', { fg = c.nord9, style = c.none })

  highlight('TSFunction', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('TSFuncMacro', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('TSMethod', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('Function', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('pythonFunction', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('vimFunction', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('vimUserFunc', { fg = c.nord4, bg = c.none, style = s.italic })

  highlight('TSInclude', { fg = c.nord10 })
  highlight('Include', { fg = c.nord10 })
  highlight('PreProc', { fg = c.nord10 })
  highlight('cInclude', { fg = c.nord10 })
  highlight('pythonImport', { fg = c.nord10 })
  highlight('rustExternCrate', { fg = c.nord10 })

  highlight('TSKeyword', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('TSKeywordFunction', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('keyword', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('Statement', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('cStatement', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('cppStatement', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('cppModifier', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('cppAccess', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('pythonstatement', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('pythonkeyword', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('rustDeriveTrait', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('luastatement', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('luakeyword', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('luamykeyword', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('luafunctioncall', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('luaspecialfunction', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('vimCommand', { fg = c.nord9, bg = c.none, style = s.none })
  highlight('vimnotfunc', { fg = c.nord9, bg = c.none, style = s.none })

  highlight('TSLabel', { fg = c.nord10, bg = c.none, style = s.italic })
  highlight('Label', { fg = c.nord10, bg = c.none, style = s.italic })

  highlight('TSNamespace', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('pythonModule', { fg = c.nord4, bg = c.none, style = s.italic })

  highlight('TSNone', { fg = c.nord4 })
  highlight('pythonnone', { fg = c.nord4 })

  highlight('TSOperator', { fg = c.nord9 })
  highlight('Operator', { fg = c.nord9 })
  highlight('cOperator', { fg = c.nord9 })
  highlight('cppOperator', { fg = c.nord9 })
  highlight('pythonoperator', { fg = c.nord9 })

  highlight('TSParameter', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('TSParameterReference', { fg = c.nord4, bg = c.none, style = s.italic })
  highlight('pythonparam', { fg = c.nord4, bg = c.none, style = s.italic })

  highlight('TSProperty', { fg = c.nord9 })

  highlight('TSPunctDelimiter', { fg = c.nord9 })
  highlight('TSPunctBracket', { fg = c.nord9 })
  highlight('TSPunctSpecial', { fg = c.nord9 })
  highlight('TSTagDelimiter', { fg = c.nord9 })
  highlight('vimparensep', { fg = c.nord9 })
  highlight('vimsep', { fg = c.nord9 })
  highlight('vimbracket', { fg = c.nord9 })
  highlight('shCmdParenRegion', { fg = c.nord9 })
  highlight('shCmdSubRegion', { fg = c.nord9 })

  highlight('TSRepeat', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('Repeat', { fg = c.nord9, bg = c.none, style = s.italic })

  highlight('TSCharacter', { fg = c.nord14 })
  highlight('TSString', { fg = c.nord14 })
  highlight('Character', { fg = c.nord14 })
  highlight('String', { fg = c.nord14 })
  highlight('cString', { fg = c.nord14 })
  highlight('cCppString', { fg = c.nord14 })
  highlight('pythonstringdelimiter', { fg = c.nord14 })
  highlight('pythonbytes', { fg = c.nord14 })
  highlight('pythonrawbytes', { fg = c.nord14 })
  highlight('pythonbytescontent', { fg = c.nord14 })

  highlight('TSStringRegex', { fg = c.nord13 })
  highlight('TSStringEscape', { fg = c.nord13 })
  highlight('SpecialChar', { fg = c.nord13 })
  highlight('cSpecialCharacter', { fg = c.nord13 })
  highlight('pythonescape', { fg = c.nord13 })

  highlight('TSSymbol', { fg = c.nord13 })
  highlight('Special', { fg = c.nord13 })
  highlight('SpecialComment', { fg = c.nord13 })
  highlight('cSpecial', { fg = c.nord13 })
  highlight('pythonsymbol', { fg = c.nord13 })
  highlight('rustCommentLineDoc', { fg = c.nord13 })
  highlight('rustCommentBlockDoc', { fg = c.nord13 })

  highlight('TSText', { fg = c.nord4 })
  highlight('TSStrong', { fg = c.nord4 })
  highlight('TSEmphais', { fg = c.nord4 })
  highlight('TSUnderline', { fg = c.nord4 })
  highlight('TSStrike', { fg = c.nord4 })
  highlight('TSTitle', { fg = c.nord4 })
  highlight('TSLiteral', { fg = c.nord4 })
  highlight('Text', { fg = c.nord4 })
  highlight('manTitle', { fg = c.nord4 })

  highlight('TSURI', { fg = c.nord15 })

  highlight('TSType', { fg = c.nord7 })
  highlight('TSTypeBuildin', { fg = c.nord7 })
  highlight('Type', { fg = c.nord7 })
  highlight('StorageClass', { fg = c.nord7 })
  highlight('Structure', { fg = c.nord7 })
  highlight('Typedef', { fg = c.nord7 })
  highlight('cType', { fg = c.nord7 })
  highlight('cStorageClass', { fg = c.nord7 })
  highlight('cStructure', { fg = c.nord7 })
  highlight('cppType', { fg = c.nord7 })
  highlight('cppStorageClass', { fg = c.nord7 })
  highlight('cppStructure', { fg = c.nord7 })
  highlight('pythonclass', { fg = c.nord7 })
  highlight('vimlet', { fg = c.nord7 })

  highlight('TSVariable', { fg = c.nord4 })
  highlight('Identifier', { fg = c.nord4 })
  highlight('pythonselfarg', { fg = c.nord4 })
  highlight('rustIdentifier', { fg = c.nord4 })
  highlight('vimmapmodkey', { fg = c.nord4 })
  highlight('vimnotation', { fg = c.nord4 })
  highlight('vimfuncvar', { fg = c.nord4 })
  highlight('vimvar', { fg = c.nord4 })
  highlight('shDerefSimple', { fg = c.nord4 })
  highlight('shDerefVar', { fg = c.nord4 })

  highlight('TSConstBuiltin', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('TSFuncBuiltin', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('TSVariableBuiltin', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('pythonbuiltin', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('pythonself', { fg = c.nord9, bg = c.none, style = s.italic })
  highlight('vimmap', { fg = c.nord9, bg = c.none, style = s.italic })

  highlight('TSNote', { fg = c.nord12 })
  highlight('Todo', { fg = c.nord12 })
  highlight('cTODO', { fg = c.nord12 })

  highlight('TSWarning', { fg = c.nord13 })
  highlight('Debug', { fg = c.nord13 })

  highlight('TSDanger', { fg = c.nord13 })

  highlight('TSError', { fg = c.nord11 })
  highlight('Error', { fg = c.nord11 })
  highlight('rustCommentLineDocError', { fg = c.nord11 })
  highlight('rustCommentBlockDocError', { fg = c.nord11 })

  -- ==========================================================================
  -- PLUGINS
  -- ==========================================================================
  -- diff
  highlight('DiffAdd', { fg = c.nord14, bg = c.nord1 })
  highlight('DiffChange', { fg = c.nord13, bg = c.nord1 })
  highlight('DiffDelete', { fg = c.nord11, bg = c.nord1 })
  highlight('DiffText', { fg = c.nord11, bg = c.nord1 })

  -- fugitive
  highlight('gitcommitDiscardedFile', { fg = c.nord11 })
  highlight('gitcommitSelectedFile', { fg = c.nord11 })
  highlight('gitcommitUntrackedFile', { fg = c.nord15 })

  -- gitgutter
  highlight('GitGutterAdd', { fg = c.nord14, bg = c.nord1 })
  highlight('GitGutterChange', { fg = c.nord13, bg = c.nord1 })
  highlight('GitGutterDelete', { fg = c.nord11, bg = c.nord1 })

  -- gitsigns
  highlight('GitSignsAdd', { fg = c.nord14, bg = c.nord0 })
  highlight('GitSignsChange', { fg = c.nord13, bg = c.nord0 })
  highlight('GitSignsDelete', { fg = c.nord11, bg = c.nord0 })

  -- indentblankline
  highlight('IndentBlanklineChar', { fg = c.nord3 })
  highlight('IndentBlanklineSpaceChar', { fg = c.nord3 })
  highlight('IndentBlanklineSpaceCharBlankLine', { fg = c.nord4 })
  highlight('IndentBlanklineContextChar', { fg = c.nord1 })

  -- lsp
  highlight('LspReferenceText', { fg = c.nord4 })
  highlight('LspReferenceRead', { fg = c.nord5 })
  highlight('LspReferenceWrite', { fg = c.nord6 })
  highlight('LspDiagnosticsDefaultHint', { fg = c.nord10 })
  highlight('LspDiagnosticsDefaultError', { fg = c.nord11 })
  highlight('LspDiagnosticsDefaultWarning', { fg = c.nord13 })
  highlight('LspDiagnosticsDefaultInformation', { fg = c.nord8 })

  -- lspsaga
  highlight('LspSagaDiagnosticBorder', { fg = c.nord12 })
  highlight('LspSagaDiagnosticHeader', { fg = c.nord12, bg = c.none, style = s.bold })
  highlight('LspSagaDiagnosticTruncateLine', { fg = c.nord12 })
  highlight('LspDiagnosticsFloatingWarn', { fg = c.nord12 })
  highlight('LspDiagnosticsFloatingInfor', { fg = c.nord10 })
  highlight('LspSagaShTruncateLine', { fg = c.nord1 })
  highlight('LspSagaDocTruncateLine', { fg = c.nord1 })
  highlight('LspSagaCodeActionTitle', { fg = c.nord12, bg = c.none, style = s.bold })
  highlight('LspSagaCodeActionTruncateLine', { fg = c.nord1 })
  highlight('LspSagaCodeActionContent', { fg = c.nord14, bg = c.none, style = s.bold })
  highlight('LspSagaRenamePromptPrefix', { fg = c.nord14 })
  highlight('LspSagaRenameBorder', { fg = c.nord7 })
  highlight('LspSagaHoverBorder', { fg = c.nord9 })
  highlight('LspSagaSignatureHelpBorder', { fg = c.nord14 })
  highlight('LspSagaLspFinderBorder', { fg = c.nord10 })
  highlight('LspSagaCodeActionBorder', { fg = c.nord8 })
  highlight('LspSagaAutoPreview', { fg = c.nord12 })
  highlight('LspSagaDefPreviewBorder', { fg = c.nord8 })

  -- markdown
  highlight('markdownCode', { fg = c.nord7 })
  highlight('markdownCodeDelimiter', { fg = c.nord7 })
  highlight('markdownBlockquote', { fg = c.nord7 })
  highlight('markdownFootnote', { fg = c.nord7 })
  highlight('markdownFootnoteDefinition', { fg = c.nord7 })
  highlight('markdownId', { fg = c.nord7 })
  highlight('markdownIdDeclaration', { fg = c.nord7 })
  highlight('markdownIdDelimiter', { fg = c.nord9 })
  highlight('markdownUrl', { fg = c.nord4 })
  highlight('markdownLinkText', { fg = c.nord8 })
  highlight('markdownLinkTextDelimiter', { fg = c.nord9 })
  highlight('markdownLinkDelimiter', { fg = c.nord9 })

  -- neogit
  highlight('NeogitDiffAddHighlight', { fg = c.nord14, bg = c.nord1 })
  highlight('NeogitDiffDeleteHighlight', { fg = c.nord11, bg = c.nord1 })
  highlight('NeogitDiffContextHighlight', { fg = c.nord13, bg = c.nord0 })
  highlight('NeogitHunkHeaderHighlight', { fg = c.nord3, bg = c.nord0 })
  highlight('NeogitHunkHeader', { fg = c.nord3, bg = c.nord0 })

  -- neorg
  highlight('Conceal', { fg = c.none })

  -- symbols-outline
  highlight('FocusedSymbol', { fg = c.nord13, bg = c.none, style = s.bold })

  -- telescope
  highlight('TelescopeBorder', { fg = c.nord3 })
  highlight('TelescopeNormal', { fg = c.nord4 })
  highlight('TelescopePromptPrefix', { fg = c.nord4 })
  highlight('TelescopeSelection', { fg = c.nord8, bg = c.nord3, style = s.bold })
  highlight('TelescopeMatching', { fg = c.nord8, bg = c.nord3 })

  -- vimwiki
  highlight('VimwikiHeader1', { fg = c.nord8 })
  highlight('VimwikiHeader2', { fg = c.nord9 })
  highlight('VimwikiHeader3', { fg = c.nord15 })

  -- whichkey
  highlight('WhichKey', { fg = c.nord8 })
  highlight('WhichKeyGroup', { fg = c.nord9 })
  highlight('WhichKeySeparator', { fg = c.nord3 })
  highlight('WhichKeyDesc', { fg = c.nord4 })
  highlight('WhichKeyFloat', { fg = c.none, c.nord0 })
  highlight('WhichKeyValue', { fg = c.nord4 })

end

return { initialize = initialize }
