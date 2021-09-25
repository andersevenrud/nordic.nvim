-- 'hrsh7th/nvim-cmp'
return function(c)
  return {
    {'CmpDocumentation', c.white, c.none },
    {'CmpDocumentationBorder', c.grayish, c.none },
    {'CmpItemAbbr', c.grayish, c.none },
    {'CmpItemAbbrMatch', c.cyan, c.none },
    {'CmpItemAbbrMatchFuzzy', c.cyan, c.none },
    {'CmpItemKind', c.white, c.none },
    {'CmpItemMenu', c.none, c.bright_black }
  }
end
