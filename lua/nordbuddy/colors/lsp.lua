 return function(opts)
    local c = opts.c
    return {
        {'LspReferenceText', c.nord4},
        {'LspReferenceRead', c.nord5},
        {'LspReferenceWrite', c.nord6},
        {'LspDiagnosticsDefaultHint', c.nord10},
        {'LspDiagnosticsDefaultError', c.nord11},
        {'LspDiagnosticsDefaultWarning', c.nord13},
        {'LspDiagnosticsDefaultInformation', c.nord8}
    }
end
