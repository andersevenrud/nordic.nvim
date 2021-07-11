return function(c, s)
    return {
        {
            {
                'markdownH1Delimiter',
                'markdownH2Delimiter',
                'markdownH3Delimiter',
                'markdownH4Delimiter',
                'markdownH5Delimiter',
                'markdownH6Delimiter'
            },
            c.bright_cyan,
            c.none
        },
        {
            {
                'markdownH1',
                'markdownH2',
                'markdownH3',
                'markdownH4',
                'markdownH5',
                'markdownH6'
            },
            c.bright_cyan,
            c.none,
            s.bold
        },
        {'markdownCode', c.cyan},
        {'markdownCodeDelimiter', c.cyan},
        {'markdownBlockquote', c.cyan},
        {'markdownFootnote', c.cyan},
        {'markdownFootnoteDefinition', c.cyan},
        {'markdownId', c.cyan},
        {'markdownIdDeclaration', c.cyan},
        {'markdownIdDelimiter', c.blue},
        {'markdownUrl', c.dark_white},
        {'markdownLinkText', c.bright_cyan},
        {'markdownLinkTextDelimiter', c.blue},
        {'markdownLinkDelimiter', c.blue}
    }
end
