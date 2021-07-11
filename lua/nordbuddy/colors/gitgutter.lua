-- 'airblade/vim-gitgutter'
return function(c)
    return {
        {'GitGutterAdd', c.green, c.black},
        {'GitGutterChange', c.yellow, c.black},
        {'GitGutterDelete', c.red, c.black}
    }
end
