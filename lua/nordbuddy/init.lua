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

local style_names = {
    'bold', 'underline', 'italic', 'undercurl', 'strikethrough',
    'reverse', 'inverse', 'standout', 'nocombine'
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

local function create_arguments(options)
    local c = {}
    for k, v in pairs(palette) do
        c['nord' .. k] = v
    end

    local s = {}
    for _, v in pairs(style_names) do
        s[v] = v
    end

    local cs = {
        underline = options.underline_option and s[options.underline_option] or s.none,
        italic = (options.italic == true or options.italic == nil) and s.italic or s.none,
        comments = options.italic_comments and s.italic or s.none
    }

    return {c, s, cs, options}
end

local function load_groups(arguments)
    local function load_group(list, result)
        for _, group in ipairs(list) do
            -- functions can return a table with nested or regular entries
            if type(group) == 'function' then
                load_group(group(unpack(arguments)), result)

            -- nested entries, i.e. multiple names with same styles
            -- {{'a', 'b', 'c'}, 'color', 'style'}
            elseif type(group[1]) == 'table' then
                load_group(vim.tbl_map(function(highlight)
                    return { highlight, group[2], group[3], group[4] }
                end, group[1]), result)

            -- a regular entry
            -- {'a', 'color', 'style'}
            else
                table.insert(result, group)
            end
        end

        return result
    end

    return load_group(all_colors, {})
end

local function initialize(config)
    local options = create_options(config)
    local arguments = create_arguments(options)
    local groups = load_groups(arguments)

    for _, group in ipairs(groups) do
        local n, fg, bg, font = unpack(group)
        vim.highlight.create(n, {
            guibg = bg and bg or 'NONE',
            guifg = fg and fg or 'NONE',
            gui = font and font or 'NONE',
        })
    end
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
