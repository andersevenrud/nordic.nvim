local colors = {
    'cmp',
    'copilot',
    'context_vt',
    'diff',
    'fugitive',
    'gitgutter',
    'gitsigns',
    'hop',
    'indent_blankline',
    'lightspeed',
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
    'packer',
    'fidget',
    'winshift',
    'minimap',
    'aerial',
    'nvim_ts_rainbow',
    'dashboard_nvim',
    'noice',
    'notify',
    'navic',
}

return function()
    return vim.tbl_map(function(v)
        return require('nordic.colors.' .. v)
    end, colors)
end
