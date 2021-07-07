return function(c, s, cs)
    return {
        --- Editor---
        {'ColorColumn', c.none, c.nord1},
        {'Cursor', c.nord0, c.nord4},
        {'CursorLine', c.none, c.nord1},
        {'Error', c.nord4, c.nord11},
        {'iCursor', c.nord0, c.nord4},
        {'LineNr', c.nord3},
        {'MatchParen', c.nord8, c.nord3},
        {'NonText', c.nord2},
        {'Normal', c.nord4, c.nord0},
        {'PMenu', c.nord4, c.nord2},
        {'PmenuSbar', c.nord4, c.nord2},
        {'PMenuSel', c.nord8, c.nord3, s.bold},
        {'PmenuThumb', c.nord8, c.nord3},
        {'SpecialKey', c.nord3},
        {'SpellBad', c.nord11, c.none, cs.underline},
        {'SpellCap', c.nord13, c.none, cs.underline},
        {'SpellLocal', c.nord5, c.none, cs.underline},
        {'SpellRare', c.nord6, c.none, cs.underline},
        {'Visual', c.none, c.nord2},
        {'VisualNOS', c.none, c.nord2},
        {'VertSplit', c.nord1},
        {'VisualNC', c.none, c.nord2},
        {'NormalNC', c.nord4, c.none},
        {'NormalFloat', c.nord5, c.nord1},
        {'RedrawDebugNormal', c.nord0, c.nord4},
        {'RedrawDebugClear', c.nord4, c.nord13},
        {'RedrawDebugComposed', c.nord4, c.nord14},
        {'RedrawDebugRecompose', c.nord4, c.nord11},
        --- Neovim ---
        {'healthError', c.nord11, c.nord1},
        {'healthSuccess', c.nord14, c.nord1},
        {'healthWarning', c.nord13, c.nord1},
        {'TermCursorNC', c.none, c.nord1},
        {'NvimInternalError', c.nord11, c.nord11},
        --- Gutter ---
        {'CursorColumn', c.none, c.nord1},
        {'CursorLineNr', c.nord4, c.nord1},
        {'Folded', c.nord3, c.nord0},
        {'FoldColumn', c.nord3, c.nord0},
        {'SignColumn', c.nord1, c.nord0},
        -- Navigation ---
        {'Directory', c.nord8},
        --- Prompt/Status ---
        {'EndOfBuffer', c.nord1},
        {'ErrorMsg', c.nord4, c.nord11},
        {'ModeMsg', c.nord4},
        {'MoreMsg', c.nord8},
        {'Question', c.nord4},
        {'StatusLine', c.nord4, c.nord0},
        {'StatusLineNC', c.nord3, c.nord0},
        {'StatusLineTerm', c.nord4, c.nord0},
        {'StatusLineTermNC', c.nord3, c.nord0},
        {'WarningMsg', c.nord0, c.nord13},
        {'WildMenu', c.nord8, c.nord1},
        --- Search ---
        {'IncSearch', c.nord6, c.nord10, s.underline},
        {'Search', c.nord1, c.nord8},
        --- Tabs ---
        {'TabLine', c.nord4, c.nord1},
        {'TabLineFill', c.nord4, c.nord1},
        {'TabLineSel', c.nord8, c.nord3},
        --- Window ---
        {'Title', c.nord4, c.none, s.bold},
        --- Others ---
        {'qffilename', c.nord13, c.none, s.none},
        {'Whitespace', c.nord4} -- idk
    }
end
