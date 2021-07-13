local palette = require('nordbuddy.palette')

-- arkav/lualine-lsp-progress
-- usage:
--     require'lualine'.setup{
--         -- ...
--         sections = {
--             lualine_c = {
--                 ...,
--                 { 'lsp_progress',
--                     colors = require('nordbuddy.configs.lualine_lsp_progress')
--                 }
--             }
--         }
--     }

return {
  percentage = palette.white,
  title = palette.white,
  message = palette.white,
  spinner = palette.white,
  lsp_client_name = palette.bright_cyan,
}
