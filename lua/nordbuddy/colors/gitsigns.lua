return function(opts)
    local c = opts.c
    -- 'lewis6991/gitsigns.nvim'
    return {
        {'GitSignsAdd', c.nord14, c.nord0},
        {'GitSignsChange', c.nord13, c.nord0},
        {'GitSignsDelete', c.nord11, c.nord0}
    }
end
