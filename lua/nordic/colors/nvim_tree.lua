-- 'kyazdani42/nvim-tree.lua'
return function(c, s, cs)
    return {
        { 'NvimTreeNormal', c.none, cs.bg('nvim-tree') },
        { 'NvimTreeSymlink', c.purple, c.none, s.bold },
        { 'NvimTreeFolderIcon', c.blue, c.none, s.bold },
        { 'NvimTreeRootFolder', c.purple, c.none, s.none },
        { 'NvimTreeExecFile', c.green, c.none, s.bold },
        { 'NvimTreeSpecialFile', c.yellow, c.none, s.bold },
        { 'NvimTreeImageFile', c.purple, c.none, s.bold },
        { 'NvimTreeOpenedFile', c.green, c.none, s.bold },
        { 'NvimTreeGitDirty', c.red, c.none, s.none },
        { 'NvimTreeGitDeleted', c.red, c.none, s.none },
        { 'NvimTreeGitNew', c.green, c.none, s.none },
        { 'NvimTreeStaged', c.green, c.none, s.none },
        { 'NvimTreeMerge', c.orange, c.none, s.none },
        { 'NvimTreeRenamed', c.purple, c.none, s.none },
        { 'NvimTreeNew', c.yellow, c.none, s.none },
    }
end
