-- lukas-reineke/indent-blankline.nvim
return function(c)
    return {
        {'IndentBlanklineChar', c.nord3},
        {'IndentBlanklineSpaceChar', c.nord3},
        {'IndentBlanklineSpaceCharBlankline', c.nord4},
        {'IndentBlanklineContextChar', c.nord1}
    }
end
