local utils = require('nordbuddy.utils')

 return function(opts)
    local c, s = opts.c, opts.s
    local to_groups = utils:highlight_to_groups({c.nord8, c.none})
    local delimiters = to_groups({
        'markdownH1Delimiter',
        'markdownH2Delimiter',
        'markdownH3Delimiter',
        'markdownH4Delimiter',
        'markdownH5Delimiter',
        'markdownH6Delimiter'
    })

    to_groups = utils:highlight_to_groups({c.nord8, c.none, s.bold})
    local headers = to_groups({
        'markdownH1',
        'markdownH2',
        'markdownH3',
        'markdownH4',
        'markdownH5',
        'markdownH6'
    })

    return utils:merge({
        delimiters,
        headers,
        {
            {'markdownCode', c.nord7},
            {'markdownCodeDelimiter', c.nord7},
            {'markdownBlockquote', c.nord7},
            {'markdownFootnote', c.nord7},
            {'markdownFootnoteDefinition', c.nord7},
            {'markdownId', c.nord7},
            {'markdownIdDeclaration', c.nord7},
            {'markdownIdDelimiter', c.nord9},
            {'markdownUrl', c.nord4},
            {'markdownLinkText', c.nord8},
            {'markdownLinkTextDelimiter', c.nord9},
            {'markdownLinkDelimiter', c.nord9}
        }
    })
end
