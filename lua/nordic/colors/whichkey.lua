-- 'folke/whick-key-nvim'
return function(c, s, cs)
    return {
        {'WhichKey', c.bright_cyan},
        {'WhichKeyGroup', c.blue},
        {'WhichKeySeparator', c.grayish},
        {'WhichKeyDesc', c.dark_white},
        {'WhichKeyFloat', c.none, cs.bg('whichkey')},
        {'WhichKeyValue', c.dark_white},
    }
end
