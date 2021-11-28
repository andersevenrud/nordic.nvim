-- 'glepnir/lspsaga.nvim'
return function(c, s)
    return {
        {'LspSagaDiagnosticBorder', c.orange},
        {'LspSagaDiagnosticHeader', c.orange, c.none, s.bold},
        {'LspSagaDiagnosticTruncateLine', c.orange},
        {'LspDiagnosticsFloatingWarn', c.orange},
        {'LspDiagnosticsFloatingInfor', c.intense_blue},
        {'LspSagaShTruncateLine', c.black},
        {'LspSagaDocTruncateLine', c.black},
        {'LspSagaCodeActionTitle', c.orange, c.none, s.bold},
        {'LspSagaCodeActionTruncateLine', c.black},
        {'LspSagaCodeActionContent', c.green, c.none, s.bold},
        {'LspSagaRenamePromptPrefix', c.green},
        {'LspSagaRenameBorder', c.cyan},
        {'LspSagaHoverBorder', c.blue},
        {'LspSagaSignatureHelpBorder', c.green},
        {'LspSagaLspFinderBorder', c.intense_blue},
        {'LspSagaCodeActionBorder', c.bright_cyan},
        {'LspSagaAutoPreview', c.orange},
        {'LspSagaDefPreviewBorder', c.bright_cyan}
    }
end
