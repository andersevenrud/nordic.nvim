local colors = {
    'diff',
    'fugitive',
    'gitgutter',
    'gitsigns',
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
    'whichkey'
}

return vim.tbl_map(function (v)
    return require('nordbuddy.colors.' .. v)
end, colors)
