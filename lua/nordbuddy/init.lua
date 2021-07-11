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
    local s = {}
    for _, v in pairs(style_names) do
        s[v] = v
    end

    local cs = {
        underline = options.underline_option and s[options.underline_option] or s.none,
        italic = (options.italic == true or options.italic == nil) and s.italic or s.none,
        comments = options.italic_comments and s.italic or s.none
    }

    return {palette, s, cs, options}
end

local function initialize(config)
    local options = create_options(config)
    local arguments = create_arguments(options)

    local function load_group(list)
        for _, group in ipairs(list) do
            -- functions can return a table with nested or regular entries
            if type(group) == 'function' then
                load_group(group(unpack(arguments)))

            -- nested entries, i.e. multiple names with same styles
            -- {{'a', 'b', 'c'}, 'color', 'style'}
            elseif type(group[1]) == 'table' then
                load_group(vim.tbl_map(function(highlight)
                    return { highlight, group[2], group[3], group[4] }
                end, group[1]))

            -- a regular entry
            -- {'a', 'color', 'style'}
            else
                local n, fg, bg, font = unpack(group)
                vim.highlight.create(n, {
                    guibg = bg or 'NONE',
                    guifg = fg or 'NONE',
                    gui = font or 'NONE',
                })
            end
        end
    end

    load_group(all_colors)
end

function M.colorscheme(config)
    vim.g.colors_name = 'nordbuddy'
    vim.g.terminal_color_0 = palette.black
    vim.g.terminal_color_1 = palette.red
    vim.g.terminal_color_2 = palette.green
    vim.g.terminal_color_3 = palette.yellow
    vim.g.terminal_color_4 = palette.blue
    vim.g.terminal_color_5 = palette.purple
    vim.g.terminal_color_6 = palette.bright_cyan
    vim.g.terminal_color_7 = palette.white
    vim.g.terminal_color_8 = palette.gray
    vim.g.terminal_color_9 = palette.red
    vim.g.terminal_color_10 = palette.green
    vim.g.terminal_color_11 = palette.yellow
    vim.g.terminal_color_12 = palette.blue
    vim.g.terminal_color_13 = palette.purple
    vim.g.terminal_color_14 = palette.cyan
    vim.g.terminal_color_15 = palette.bright_white

    initialize(config)
end

return M
