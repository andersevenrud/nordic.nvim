local utils = require('nordbuddy.utils')
local palette = require('nordbuddy.palette')
local all_colors = require('nordbuddy.colors')
local Color, c, Group = require('colorbuddy').setup()
local s = require('colorbuddy.style').styles
local vim = vim
local M = {}

local function customizations()
    local underline = s.none
    local italic = s.italic

    if vim.g.nord_underline_option == 'underline' then
        underline = s.underline
    elseif vim.g.nord_underline_option == 'undercurl' then
        underline = s.undercurl
    end

    if vim.g.nord_italic ~= nil and not vim.g.nord_italic then
        italic = s.none
    end

    return {italic = italic, underline = underline}
end

local function initialize()
    for k, v in pairs(palette) do Color.new('nord' .. k, v) end

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

    return customizations()
end

local function load(...)
    local definitions = {}
    for _, fn in pairs(all_colors) do table.insert(definitions, fn(...)) end

    return utils.merge(definitions)
end

function M:use()
    local cs = initialize()
    local colors = load(c, s, cs)

    for _, group in ipairs(colors) do
        local check_none = function(none_resp)
            return function(x) return not x and none_resp or x end
        end

        local cNone = check_none(c.none)
        local sNone = check_none(s.none)
        Group.new(group[1], cNone(group[2]), cNone(group[3]), sNone(group[4]))
    end
end

return M
