-- 'folke/whick-key-nvim'
return function(c)
    return {
        {'WhichKey', c.bright_cyan},
        {'WhichKeyGroup', c.blue},
        {'WhichKeySeparator', c.grayish},
        {'WhichKeyDesc', c.dark_white},
        {'WhichKeyFloat', c.none, c.black},
        {'WhichKeyValue', c.dark_white},
    }
end
