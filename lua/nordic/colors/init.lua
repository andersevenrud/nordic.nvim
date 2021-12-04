local colors = {
    'cmp',
    'diff',
    'fugitive',
    'gitgutter',
    'gitsigns',
    'hop',
    'indent_blankline',
    'lsp',
    'lspsaga',
    'markdown',
    'neogit',
    'neorg',
    'standard',
    'symbols_outline',
    'syntax',
    'telescope',
    'vimwiki',
    'whichkey',
    'nvim_tree',
}

return function()
    return vim.tbl_map(function(v)
        return require('nordic.colors.' .. v)
    end, colors)
end
