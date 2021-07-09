return function(opts)
    local c = opts.c
    -- 'folke/whick-key-nvim'
    return {
        {'WhichKey', c.nord8},
        {'WhichKeyGroup', c.nord9},
        {'WhichKeySeparator', c.nord3_light},
        {'WhichKeyDesc', c.nord4},
        {'WhichKeyFloat', c.none, c.nord1},
        {'WhichKeyValue', c.nord4},
    }
end
