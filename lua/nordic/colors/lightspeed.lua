-- 'ggandor/lightspeed.nvim'
return function(c, s)
    return {
        { 'LightspeedLabel', c.yellow, c.none },
        { 'LightspeedLabelOverlapped', c.yellow, c.black, s.reverse },
        { 'LightspeedLabelDistant', c.purple, c.bright_black, s.bold },
        { 'LightspeedLabelDistantOverlapped', c.purple, c.bright_black, s.reverse },
        { 'LightspeedShortcut', c.orange, c.none, s.bold },
        { 'LightspeedShortcutOverlapped', c.orange, c.black, s.reverse },
        { 'LightspeedMaskedChar', c.dark_white, c.bright_black, s.bold },
        { 'LightspeedGreyWash', c.grayish },
        { 'LightspeedUnlabeledMatch', c.bright_white, c.bright_black },
        { 'LightspeedOneCharMatch', c.cyan, c.none, s.reverse },
    }
end
