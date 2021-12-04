return function(c)
    return {
        { 'DiffAdd', c.green, c.black },
        { 'DiffAdded', c.green, c.black },
        { 'DiffChange', c.yellow, c.black },
        { 'DiffDelete', c.red, c.black },
        { 'DiffText', c.red, c.black },
    }
end
