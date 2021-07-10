-- 'glepnir/lspsaga.nvim'
return function(c, s)
    return {
        {'LspSagaDiagnosticBorder', c.nord12},
        {'LspSagaDiagnosticHeader', c.nord12, c.none, s.bold},
        {'LspSagaDiagnosticTruncateLine', c.nord12},
        {'LspDiagnosticsFloatingWarn', c.nord12},
        {'LspDiagnosticsFloatingInfor', c.nord10},
        {'LspSagaShTruncateLine', c.nord1},
        {'LspSagaDocTruncateLine', c.nord1},
        {'LspSagaCodeActionTitle', c.nord12, c.none, s.bold},
        {'LspSagaCodeActionTruncateLine', c.nord1},
        {'LspSagaCodeActionContent', c.nord14, c.none, s.bold},
        {'LspSagaRenamePromptPrefix', c.nord14},
        {'LspSagaRenameBorder', c.nord7},
        {'LspSagaHoverBorder', c.nord9},
        {'LspSagaSignatureHelpBorder', c.nord14},
        {'LspSagaLspFinderBorder', c.nord10},
        {'LspSagaCodeActionBorder', c.nord8},
        {'LspSagaAutoPreview', c.nord12},
        {'LspSagaDefPreviewBorder', c.nord8}
    }
end
