return function(c, s, cs)
    -- 'folke/whick-key-nvim'
    return {
        {'WhichKey', c.nord8},
        {'WhichKeyGroup', c.nord9},
        {'WhichKeySeparator', c.nord3:light()},
        {'WhichKeyDesc', c.nord4},
        {'WhichKeyFloat', c.none, c.nord0:light(.05)},
        {'WhichKeyValue', c.nord4},
    }
end
