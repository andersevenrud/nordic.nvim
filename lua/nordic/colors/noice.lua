-- 'folke/noice.nvim'
return function(c, s, cs)
    return {
        { 'NoiceLspProgressClient', c.green },
        { 'NoiceLspProgressTitle', c.white },
    }
end
