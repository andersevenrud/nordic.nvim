-- 'sindrets/winshift.nvim'
return function(c, s)
    return {
        { { 'WinShiftNormal', 'WinShiftEndOfBuffer' }, c.none, c.dark_black_alt },
        { 'WinShiftLineNr', c.yellow, c.dark_black_alt },
        { 'WinShiftCursorLineNr', c.yellow, c.dark_black_alt, s.bold },
        { 'WinShiftSignColumn', c.cyan, c.dark_black_alt },
        { 'WinShiftWindowPicker', c.purple, c.blue, s.bold },
        { 'WinShiftFoldColumn', c.cyan, c.dark_black_alt },
    }
end
