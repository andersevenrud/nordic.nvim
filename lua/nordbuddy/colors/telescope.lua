-- 'nvim-telescope/telescope.nvim'
return function(c, s)
    return {
        {'TelescopeBorder', c.nord3},
        {'TelescopeNormal', c.nord4},
        {'TelescopePromptPrefix', c.nord4},
        {'TelescopeSelection', c.nord8, c.nord3, s.bold},
        {'TelescopeMatching', c.nord8, c.nord3}
    }
end
