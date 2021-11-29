-- 'nvim-telescope/telescope.nvim'
return function(c, s, cs)
    return {
        {'TelescopeBorder', c.gray, cs.bg('telescope') },
        {'TelescopeNormal', c.dark_white, cs.bg('telescope') },
        {'TelescopePreviewNormal', c.dark_white, cs.bg('telescope') },
        {'TelescopePromptPrefix', c.dark_white},
        {'TelescopeSelection', c.bright_cyan, c.gray, s.bold},
        {'TelescopeMatching', c.bright_cyan, c.gray}
    }
end
