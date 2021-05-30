local utils = require('nordbuddy.utils')

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
    'vimwiki',
    'whichkey'
}

return utils:prepare(colors)
