return function(c, s)
    return {
        { 'LspReferenceText', c.dark_white },
        { 'LspReferenceRead', c.white },
        { 'LspReferenceWrite', c.bright_white },
        { 'LspDiagnosticsDefaultHint', c.intense_blue },
        { 'LspDiagnosticsDefaultError', c.red },
        { 'LspDiagnosticsDefaultWarning', c.yellow },
        { 'LspDiagnosticsDefaultInformation', c.bright_cyan },

        { 'DiagnosticUnderlineError', c.none, c.none, s.underline, c.red },
        { 'DiagnosticUnderlineWarn', c.none, c.none, s.underline, c.yellow },
        { 'DiagnosticUnderlineInfo', c.none, c.none, s.underline, c.bright_cyan },
        { 'DiagnosticUnderlineHint', c.none, c.none, s.underline, c.intense_blue },

        -- Support for updated highlights - https://github.com/neovim/neovim/pull/15585
        { 'DiagnosticError', c.red },
        { 'DiagnosticHint', c.intense_blue },
        { 'DiagnosticInfo', c.bright_cyan },
        { 'DiagnosticWarn', c.yellow },
    }
end
