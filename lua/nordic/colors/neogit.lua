-- 'TimUntersberger/neogit'
return function(c)
    return {
        {'NeogitDiffAddHighlight', c.green, c.black},
        {'NeogitDiffDeleteHighlight', c.red, c.black},
        {'NeogitDiffContextHighlight', c.white, c.dark_black},
        {'NeogitHunkHeaderHighlight', c.grayish, c.dark_black},
        {'NeogitHunkHeader', c.grayish, c.dark_black}
    }
end
