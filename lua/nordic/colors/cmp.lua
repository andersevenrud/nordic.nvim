-- 'hrsh7th/nvim-cmp'
return function(c)
  return {
    {'CmpDocumentation', c.white, c.none},
    {'CmpDocumentationBorder', c.grayish, c.none},
    {'CmpItemAbbr', c.dark_white, c.none},
    {'CmpItemAbbrMatch', c.bright_cyan, c.none},
    {'CmpItemAbbrMatchFuzzy', c.bright_cyan, c.none},
    {'CmpItemKind', c.grayish, c.none},
    {'CmpItemMenu', c.none, c.black},
    {'CmpItemKindDefault', c.dark_white, c.none},
    {'CmpItemAbbrMatch', c.blue, c.none},
    {'CmpItemAbbrMatchFuzzy', c.blue, c.none},
    {'CmpItemKindFunction', c.purple, c.none},
    {'CmpItemKindMethod', c.purple, c.none},
    {'CmpItemKindVariable', c.cyan, c.none},
    {'CmpItemKindKeyword', c.white, c.none},
  }
end
