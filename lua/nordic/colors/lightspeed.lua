-- 'ggandor/lightspeed.nvim'
return function(c, s)
    return {
        { 'LightspeedLabel', c.blue, c.none, s.bold },
        { 'LightspeedLabelOverlapped', c.blue, c.dark_white, s.reverse },
        { 'LightspeedLabelDistant', c.purple, c.none, s.bold },
        { 'LightspeedLabelDistantOverlapped', c.purple, c.none, s.reverse },
        { 'LightspeedShortcut', c.intense_blue, c.black, s.bold },
        { 'LightspeedShortcutOverlapped', c.intense_blue, c.none, s.reverse },
        { 'LightspeedMaskedChar', c.dark_white, c.bright_black, s.bold },
        { 'LightspeedGreyWash', c.grayish },
        { 'LightspeedUnlabeledMatch', c.bright_white, c.bright_black },
        { 'LightspeedOneCharMatch', c.cyan, c.none, s.reverse },
    }
end
