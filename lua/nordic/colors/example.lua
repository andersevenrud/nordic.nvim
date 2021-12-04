-- c: color palette table
--  see the palette file for available entries
-- s: styles table
--  none, bold, underline, italic, undercurl, strikethrough, reverse, inverse, standout, nocombine
-- cs: user defined/configured styles table
--  none, underline, italic, comments
--  bg(name) -> default or alternate background color based on configuration
return function(c, s, cs)
    return {
        -- Single highlight group (name, foreground, background, style)
        { 'HightlightName1', c.red, c.white, s.bold },
        { 'HightlightName2', c.none, c.green },
        { 'HightlightName3', c.white },

        -- Multiple hightlight groups (same as above except table for names)
        {
            { 'HighlightName4', 'HighlightName5' },
            c.red,
            c.white,
            s.bold,
        },

        -- Or a function that can return any of these combinations
        function(--[[c, s, cs]])
            return {
                {
                    'HightlightName6',
                    c.red,
                    cs.bg('plugin_name'), -- Alternate or default background based on user configuration
                    cs.underline,
                },
            }
        end,
    }
end
