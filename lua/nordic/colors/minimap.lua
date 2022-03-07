-- 'wfxr/minimap.vim'
return function(c)
    return {
        { 'minimapCursor', c.blue, c.none },
        { 'minimapRange', c.blue, c.none },
        { 'minimapDiffAdded', c.green, c.none },
        { 'minimapDiffLine', c.yellow, c.none },
        { 'minimapDiffRemoved', c.red, c.none },
        { 'minimapCursorDiffAdded', c.green, c.none },
        { 'minimapCursorDiffLine', c.yellow, c.none },
        { 'minimapCursorDiffRemoved', c.red, c.none },
        { 'minimapRangeDiffAdded', c.green, c.none },
        { 'minimapRangeDiffLine', c.yellow, c.none },
        { 'minimapRangeDiffRemoved', c.red, c.none },
    }
end
