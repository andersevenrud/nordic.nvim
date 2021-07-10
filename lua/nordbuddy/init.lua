local palette = require('nordbuddy.palette')
local all_colors = require('nordbuddy.colors')
local vim = vim
local M = {}

local default_opts = {
    underline_option = 'none',
    italic = true,
    italic_comments = false,
    minimal_mode = false
}

local function create_options(config)
    local user_opts = {}
    local global_opts = {}

    for k in pairs(default_opts) do
        user_opts[k] = config[k]
        global_opts[k] = vim.g['nord_' ..  k]
    end

    return vim.tbl_extend('force', default_opts, global_opts, user_opts)
end

local function create_colors()
    local c = {}
    for k, v in pairs(palette) do
        c['nord' .. k] = v
    end
    return c
end

local function create_styles()
    local s = {}
    local names = {
        'bold', 'underline', 'undercurl', 'strikethrough', 'reverse', 'inverse',
        'italic', 'standout', 'nocombine'
    }

    for _, v in pairs(names) do
        s[v] = v
    end

    return s
end

local function create_custom_styles(s, options)
    local underline = s.none
    local italic = s.italic
    local comments = s.none

    if options.underline_option == 'underline' then
        underline = s.underline
    elseif options.underline_option == 'undercurl' then
        underline = s.undercurl
    end

    if not options.italic then
        italic = s.none
    end

    if options.italic_comments then
        comments = s.italic
    end

    return {italic = italic, underline = underline, comments = comments}
end

local function load_groups(...)
    local definitions = {}

    local function load_group(result)
        for _, group in ipairs(result) do
            -- functions can return a table with nested or regular entries
            if type(group) == 'function' then
                load_group(group())

            -- nested entries, i.e. multiple names with same styles
            -- {{'a', 'b', 'c'}, 'color', 'style'}
            elseif type(group[1]) == 'table' then
                load_group(vim.tbl_map(function(highlight)
                    return { highlight, group[2], group[3], group[4] }
                end, group[1]))

            -- a regular entry
            -- {'a', 'color', 'style'}
            else
                table.insert(definitions, group)
            end
        end
    end

    for _, fn in pairs(all_colors) do
        load_group(fn(...))
    end

    return definitions
end

local function apply_groups(list)
    local function hi(n, fg, bg, font)
        vim.highlight.create(n, {
            guibg = bg and bg or 'NONE',
            guifg = fg and fg or 'NONE',
            gui = font and font or 'NONE',
        })
    end

    for _, group in ipairs(list) do
        if type(group[1]) == 'table' then
            apply_groups(group)
        else
            hi(unpack(group))
        end
    end
end

local function initialize(config)
    local options = create_options(config)
    local c = create_colors()
    local s = create_styles()
    local cs = create_custom_styles(s, options)
    local groups = load_groups(c, s, cs, options)

    apply_groups(groups)
end

function M.colorscheme(config)
    vim.g.colors_name = 'nordbuddy'
    vim.g.terminal_color_0 = palette[1]
    vim.g.terminal_color_1 = palette[11]
    vim.g.terminal_color_2 = palette[14]
    vim.g.terminal_color_3 = palette[13]
    vim.g.terminal_color_4 = palette[9]
    vim.g.terminal_color_5 = palette[15]
    vim.g.terminal_color_6 = palette[8]
    vim.g.terminal_color_7 = palette[5]
    vim.g.terminal_color_8 = palette[3]
    vim.g.terminal_color_9 = palette[11]
    vim.g.terminal_color_10 = palette[14]
    vim.g.terminal_color_11 = palette[13]
    vim.g.terminal_color_12 = palette[9]
    vim.g.terminal_color_13 = palette[15]
    vim.g.terminal_color_14 = palette[7]
    vim.g.terminal_color_15 = palette[6]

    initialize(config)
end

return M
