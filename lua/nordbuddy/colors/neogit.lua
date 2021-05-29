return function(c, s, cs)
    -- 'TimUntersberger/neogit'
    return {
        {'NeogitDiffAddHighlight', c.nord14, c.nord1},
        {'NeogitDiffDeleteHighlight', c.nord11, c.nord1},
        {'NeogitDiffContextHighlight', c.nord13, c.nord0},
        {'NeogitHunkHeaderHighlight', c.nord3:light(), c.nord0},
        {'NeogitHunkHeader', c.nord3:light(), c.nord0}
    }
end
