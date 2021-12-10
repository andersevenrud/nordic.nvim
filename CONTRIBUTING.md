# Contribution Guide

Pull requests are very welcome and this guide will walk thorugh some of the basics
on how to contribute.

## Code style

This project uses [stylua](https://github.com/JohnnyMorganz/StyLua) and [luacheck](https://github.com/mpeterv/luacheck)
to check the code for potential errors and styling issues.

It is adviced to install these utilities and check your code before submission. Most modern IDEs and editors have some
way of alerting you with diagnostics using the provided configurations.

## Adding color definitions

In the `lua/nordic/colors/` directory:

1. Create a new file for your colors, i.e. `project_name.lua` with the following template (see `example.lua` for example definitions):
```lua
-- 'repo-username/repo-name'
return function(c, s, cs)
    return {}
end
```
2. Add the filename to the `init.lua` file table:
```lua
local colors = {
  -- ...
  -- Add your filename to the bottom of this table
  'project_name',
}
```

You should now have a working color definition ready for submission. Commit the changes with the message
`Add support for repo-name` into your fork and open a pull-request.

### Alternate background colors

This colorscheme provides a user-configurable option to enable alternative background colors
on certain UI elements like special buffers and popups, etc.

The `lua/nordic/init.lua` file contains two tables to define where this should apply:

* `alternate_buffers_supported`: A buffer filename
* `alternate_highlights_supported`: A plugin name used in color definitions via `cs.bg('plugin_name')`
