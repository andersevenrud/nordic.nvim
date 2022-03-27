return function(c, _, cs, opts)
    return {
        --- Editor---
        ColorColumn = { fg = c.none, bg = c.black },
        Cursor = { fg = c.dark_black, bg = c.dark_white },
        Error = { fg = c.dark_white, bg = c.red },
        iCursor = { fg = c.dark_black, bg = c.dark_white },
        LineNr = { fg = c.gray },
        MatchParen = { fg = c.bright_cyan, bg = c.gray },
        NonText = { fg = c.bright_black },
        Normal = { fg = c.dark_white, bg = c.dark_black },
        NormalAlt = { fg = c.dark_white, bg = c.dark_black_alt },
        PMenu = { fg = c.dark_white, bg = c.bright_black },
        PmenuSbar = { fg = c.dark_white, bg = c.bright_black },
        PMenuSel = { fg = c.bright_cyan, bg = c.gray, bold = true },
        PmenuThumb = { fg = c.bright_cyan, bg = c.gray },
        SpecialKey = { fg = c.gray },
        SpellBad = { fg = c.red, bg = c.none, underline = cs.underline },
        SpellCap = { fg = c.yellow, bg = c.none, underline = cs.underline },
        SpellLocal = { fg = c.white, bg = c.none, underline = cs.underline },
        SpellRare = { fg = c.bright_white, bg = c.none, underline = cs.underline },
        Visual = { fg = c.none, bg = c.bright_black },
        VisualNOS = { fg = c.none, bg = c.bright_black },
        VertSplit = { fg = c.black },
        VisualNC = { fg = c.none, bg = c.bright_black },
        NormalNC = { fg = c.dark_white, bg = c.none },
        RedrawDebugNormal = { fg = c.dark_black, bg = c.dark_white },
        RedrawDebugClear = { fg = c.dark_white, bg = c.yellow },
        RedrawDebugComposed = { fg = c.dark_white, bg = c.green },
        RedrawDebugRecompose = { fg = c.dark_white, bg = c.red },
        --- Neovim ---
        healthError = { fg = c.red, bg = c.black },
        healthSuccess = { fg = c.green, bg = c.black },
        healthWarning = { fg = c.yellow, bg = c.black },
        TermCursorNC = { fg = c.none, bg = c.black },
        NvimInternalError = { fg = c.red, bg = c.red },
        --- Gutter ---
        CursorColumn = { fg = c.none, bg = c.black },
        CursorLineNr = { fg = c.dark_white, bg = c.black },
        Folded = { fg = c.gray, bg = c.dark_black },
        FoldColumn = { fg = c.gray, bg = c.dark_black },
        SignColumn = { fg = c.black, bg = c.dark_black },
        SignColumnAlt = { fg = c.black, bg = c.dark_black_alt },
        -- Navigation ---
        Directory = { fg = c.bright_cyan },
        --- Prompt/Status ---
        EndOfBuffer = { fg = c.black },
        ErrorMsg = { fg = c.dark_white, bg = c.red },
        ModeMsg = { fg = c.dark_white },
        MoreMsg = { fg = c.bright_cyan },
        Question = { fg = c.dark_white },
        WarningMsg = { fg = c.dark_black, bg = c.yellow },
        WildMenu = { fg = c.bright_cyan, bg = c.black },
        --- Search ---
        IncSearch = { fg = c.bright_white, bg = c.intense_blue, underline = true },
        Search = { fg = c.black, bg = c.bright_cyan },
        --- Window ---
        Title = { fg = c.dark_white, bg = c.none, bold = true },
        --- Others ---
        qffilename = { fg = c.yellow, bg = c.none }, --, s.none },
        Whitespace = { fg = c.bright_black }, -- listchars nbsp, space, tab, trail

        function()
            if opts.minimal_mode then
                return {
                    --- Editor---
                    CursorLine = { fg = c.none, bg = c.darkish_black },
                    NormalFloat = { fg = c.white, bg = c.none },
                    FloatBorder = { fg = c.grayish, bg = c.none },
                    --- Prompt/Status ---
                    StatusLine = { fg = c.dark_white, bg = c.dark_black },
                    StatusLineNC = { fg = c.grayish, bg = c.dark_black },
                    StatusLineTerm = { fg = c.dark_white, bg = c.dark_black },
                    StatusLineTermNC = { fg = c.grayish, bg = c.dark_black },
                    --- Tabs ---
                    TabLine = { fg = c.grayish, bg = c.dark_black },
                    TabLineFill = { fg = c.grayish, bg = c.dark_black },
                    TabLineSel = { fg = c.bright_white, bg = c.dark_black },
                }
            end

            return {
                --- Editor---
                NormalFloat = { fg = c.white, bg = c.black },
                CursorLine = { fg = c.none, bg = c.black },
                --- Prompt/Status ---
                StatusLine = { fg = c.bright_cyan, bg = c.gray },
                StatusLineNC = { fg = c.dark_white, bg = c.black },
                StatusLineTerm = { fg = c.bright_cyan, bg = c.gray },
                StatusLineTermNC = { fg = c.dark_white, bg = c.black },
                --- Tabs ---
                TabLine = { fg = c.dark_white, bg = c.black },
                TabLineFill = { fg = c.dark_white, bg = c.black },
                TabLineSel = { fg = c.bright_cyan, bg = c.gray },
            }
        end,
    }
end
