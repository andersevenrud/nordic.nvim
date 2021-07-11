-- 'nvim-telescope/telescope.nvim'
return function(c, s)
    return {
        {'TelescopeBorder', c.gray},
        {'TelescopeNormal', c.dark_white},
        {'TelescopePromptPrefix', c.dark_white},
        {'TelescopeSelection', c.bright_cyan, c.gray, s.bold},
        {'TelescopeMatching', c.bright_cyan, c.gray}
    }
end
