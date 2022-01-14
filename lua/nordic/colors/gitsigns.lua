-- 'lewis6991/gitsigns.nvim'
return function(c)
    return {
        { 'GitSignsAdd', c.green, c.dark_black },
        { 'GitSignsChange', c.yellow, c.dark_black },
        { 'GitSignsDelete', c.red, c.dark_black },
        { 'GitSignsDeleteLn', c.red, c.bright_black },
    }
end
