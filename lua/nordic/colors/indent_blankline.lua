-- lukas-reineke/indent-blankline.nvim
return function(c)
    return {
        { 'IndentBlanklineChar', c.gray },
        { 'IndentBlanklineSpaceChar', c.gray },
        { 'IndentBlanklineSpaceCharBlankline', c.dark_white },
        { 'IndentBlanklineContextChar', c.black },
    }
end
