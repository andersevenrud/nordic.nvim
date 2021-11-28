-- tpope/vim-fugitive
return function(c)
    return {
        {'gitcommitDiscardedFile', c.red},
        {'gitcommitUntrackedFile', c.red},
        {'gitcommitSelectedFile', c.purple}
    }
end
