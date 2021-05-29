local function prepare(modules)
    local prepared_modules = {}
    for _, v in ipairs(modules) do
        table.insert(prepared_modules, require('nordbuddy.colors.' .. v))
    end
    return prepared_modules
end

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
    'standard',
    'symbols_outline',
    'syntax',
    'telescope',
    'whichkey'
}

return prepare(colors)
