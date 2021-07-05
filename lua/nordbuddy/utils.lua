local utils = {}

function utils:prepare(modules)
    local prepared_modules = {}
    for _, v in ipairs(modules) do
        table.insert(prepared_modules, require('nordbuddy.colors.' .. v))
    end
    return prepared_modules
end

function utils:merge(list)
    local acc = {}
    for _, result in ipairs(list) do vim.list_extend(acc, result) end
    return acc
end

function utils:highlight_to_groups(highlight)
    return function(groups)
        local acc = {}
        for _, name in ipairs(groups) do
            table.insert(acc, {name, highlight[1], highlight[2], highlight[3]})
        end
        return acc
    end
end

function utils:highlight(n, fg, bg, font)
    vim.highlight.create(n, {
        guibg = bg and bg or 'NONE',
        guifg = fg and fg or 'NONE',
        gui = font and font or 'NONE',
    })
end

return utils
