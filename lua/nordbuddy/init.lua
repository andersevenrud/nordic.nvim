local utils = require('nordbuddy.utils')
local palette = require('nordbuddy.palette')
local all_colors = require('nordbuddy.colors')
local vim = vim
local M = {}

local function create_colors()
    local c = {}
    for k, v in pairs(palette) do
        c['nord' .. k] = v
    end
    return c
end

local function create_styles()
    local s = {}
    local names = { 'bold', 'underline', 'undercurl', 'strikethrough', 'reverse', 'inverse', 'italic', 'standout', 'nocombine'}
    for _, v in pairs(names) do
        s[v] = v
    end
    return s
end

local function create_custom_styles(s)
    local underline = s.none
    local italic = s.italic
    local comments = s.none

    if vim.g.nord_underline_option == 'underline' then
        underline = s.underline
    elseif vim.g.nord_underline_option == 'undercurl' then
        underline = s.undercurl
    end

    if vim.g.nord_italic ~= nil and not vim.g.nord_italic then
        italic = s.none
    end

    if vim.g.nord_italic_comments == true then
        comments = s.italic
    end

    return {italic = italic, underline = underline, comments = comments}
end

local function load_groups(...)
    local definitions = {}
    for _, fn in pairs(all_colors) do table.insert(definitions, fn(...)) end

    return utils:merge(definitions)
end

local function initialize()
    local c = create_colors()
    local s = create_styles()
    local cs = create_custom_styles(s)
    local groups = load_groups(c, s, cs)

    for _, group in ipairs(groups) do
        utils:highlight(unpack(group))
    end
end

function M:use()
    vim.o.background = 'dark'
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

    initialize()
end

return M
