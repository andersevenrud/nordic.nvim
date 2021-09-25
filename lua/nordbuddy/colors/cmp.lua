-- 'hrsh7th/nvim-cmp'
return function(c)
  return {
    {'CmpDocumentation', c.white, c.none },
    {'CmpDocumentationBorder', c.grayish, c.none },
    {'CmpItemAbbr', c.dark_white, c.none },
    {'CmpItemAbbrMatch', c.bright_cyan, c.none },
    {'CmpItemAbbrMatchFuzzy', c.bright_cyan, c.none },
    {'CmpItemKind', c.grayish, c.none },
    {'CmpItemMenu', c.none, c.black }
  }
end
