return function(c)
    return {
        { 'LspReferenceText', c.dark_white },
        { 'LspReferenceRead', c.white },
        { 'LspReferenceWrite', c.bright_white },
        { 'LspDiagnosticsDefaultHint', c.intense_blue },
        { 'LspDiagnosticsDefaultError', c.red },
        { 'LspDiagnosticsDefaultWarning', c.yellow },
        { 'LspDiagnosticsDefaultInformation', c.bright_cyan },

        -- Support for updated highlights - https://github.com/neovim/neovim/pull/15585
        { 'DiagnosticError', c.red },
        { 'DiagnosticHint', c.intense_blue },
        { 'DiagnosticInfo', c.bright_cyan },
        { 'DiagnosticWarn', c.yellow },
    }
end
