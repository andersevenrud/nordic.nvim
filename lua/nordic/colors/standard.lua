return function(c, s, cs, opts)
    return {
        --- Editor---
        { 'ColorColumn', c.none, c.black },
        { 'Cursor', c.dark_black, c.dark_white },
        { 'Error', c.dark_white, c.red },
        { 'iCursor', c.dark_black, c.dark_white },
        { 'LineNr', c.gray },
        { 'MatchParen', c.bright_cyan, c.gray },
        { 'NonText', c.bright_black },
        { 'Normal', c.dark_white, c.dark_black },
        { 'NormalAlt', c.dark_white, c.dark_black_alt },
        { 'PMenu', c.dark_white, c.bright_black },
        { 'PmenuSbar', c.dark_white, c.bright_black },
        { 'PMenuSel', c.bright_cyan, c.gray, s.bold },
        { 'PmenuThumb', c.bright_cyan, c.gray },
        { 'SpecialKey', c.gray },
        { 'SpellBad', c.red, c.none, cs.underline },
        { 'SpellCap', c.yellow, c.none, cs.underline },
        { 'SpellLocal', c.white, c.none, cs.underline },
        { 'SpellRare', c.bright_white, c.none, cs.underline },
        { 'Visual', c.none, c.bright_black },
        { 'VisualNOS', c.none, c.bright_black },
        { 'VertSplit', c.black },
        { 'VisualNC', c.none, c.bright_black },
        { 'NormalNC', c.dark_white, c.none },
        { 'RedrawDebugNormal', c.dark_black, c.dark_white },
        { 'RedrawDebugClear', c.dark_white, c.yellow },
        { 'RedrawDebugComposed', c.dark_white, c.green },
        { 'RedrawDebugRecompose', c.dark_white, c.red },
        { 'WinBar', c.dark_white, c.black },
        { 'WinBarNC', c.grayish, c.dark_black },
        --- Neovim ---
        { 'healthError', c.red, c.black },
        { 'healthSuccess', c.green, c.black },
        { 'healthWarning', c.yellow, c.black },
        { 'TermCursorNC', c.none, c.black },
        { 'NvimInternalError', c.red, c.red },
        --- Gutter ---
        { 'CursorColumn', c.none, c.black },
        { 'CursorLineNr', c.dark_white, c.black },
        { 'Folded', c.gray, c.dark_black },
        { 'FoldColumn', c.gray, c.dark_black },
        { 'SignColumn', c.black, c.dark_black },
        { 'SignColumnAlt', c.black, c.dark_black_alt },
        -- Navigation ---
        { 'Directory', c.bright_cyan },
        --- Prompt/Status ---
        { 'EndOfBuffer', c.black },
        { 'ErrorMsg', c.dark_white, c.red },
        { 'ModeMsg', c.dark_white },
        { 'MoreMsg', c.bright_cyan },
        { 'Question', c.dark_white },
        { 'WarningMsg', c.dark_black, c.yellow },
        { 'WildMenu', c.bright_cyan, c.black },
        --- Search ---
        { 'IncSearch', c.bright_white, c.intense_blue, s.underline },
        { 'Search', c.black, c.bright_cyan },
        --- Window ---
        { 'Title', c.dark_white, c.none, s.bold },
        --- Others ---
        { 'qffilename', c.yellow, c.none, s.none },
        { 'Whitespace', c.bright_black }, -- listchars nbsp, space, tab, trail

        function()
            if opts.minimal_mode then
                return {
                    --- Editor---
                    { 'CursorLine', c.none, c.darkish_black },
                    { 'NormalFloat', c.white, c.none },
                    { 'FloatBorder', c.grayish, c.dark_black },
                    { 'FloatTitle', c.grayish, c.dark_black },
                    --- Prompt/Status ---
                    { 'StatusLine', c.dark_white, c.dark_black },
                    { 'StatusLineNC', c.grayish, c.dark_black },
                    { 'StatusLineTerm', c.dark_white, c.dark_black },
                    { 'StatusLineTermNC', c.grayish, c.dark_black },
                    --- Tabs ---
                    { 'TabLine', c.grayish, c.dark_black },
                    { 'TabLineFill', c.grayish, c.dark_black },
                    { 'TabLineSel', c.bright_white, c.dark_black },
                }
            end

            return {
                --- Editor---
                { 'NormalFloat', c.white, c.black },
                { 'CursorLine', c.none, c.black },
                { 'FloatBorder', c.black, c.dark_black },
                { 'FloatTitle', c.grayish, c.dark_black },
                --- Prompt/Status ---
                { 'StatusLine', c.bright_cyan, c.gray },
                { 'StatusLineNC', c.dark_white, c.black },
                { 'StatusLineTerm', c.bright_cyan, c.gray },
                { 'StatusLineTermNC', c.dark_white, c.black },
                --- Tabs ---
                { 'TabLine', c.dark_white, c.black },
                { 'TabLineFill', c.dark_white, c.black },
                { 'TabLineSel', c.bright_cyan, c.gray },
            }
        end,
    }
end
