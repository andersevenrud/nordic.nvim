# Nordbuddy

A [nord](https://www.nordtheme.com/)-esque colorscheme.

Nordbuddy supports highlighting for [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
[Neovim LSP](https://neovim.io/doc/user/lsp.html), [Telescope](https://github.com/nvim-telescope/telescope.nvim/),
and [much more](https://github.com/maaslalani/nordbuddy/tree/main/lua/nordbuddy/colors).

![Color Preview](https://user-images.githubusercontent.com/42545625/112913430-935a6a80-90c7-11eb-867e-394b1790a14f.png)

## Requirements

* Neovim 0.5+

## Usage

This colorscheme can be installed, configured and enabled through `packer.nvim`:

``` lua
use {
    'maaslalani/nordbuddy',
    config = function()
        require('nordbuddy').colorscheme(
        -- This function takes a table as argument.
        -- If an empty table is passed, these values are implicitly assigned.
        {
            -- Underline style used for spelling
            -- Options: 'none', 'underline', 'undercurl'
            underline_option = 'none',

            -- Italics for certain keywords such as constructors, functions,
            -- labels and namespaces
            italic = true,

            -- Italic styled comments
            italic_comments = false,

            -- Minimal mode: different choice of colors for Tabs and StatusLine
            minimal_mode = false
        })
    end
}
```


### Alternatively

#### Install

Install using:
* `packer.nvim`

``` lua
use { 'maaslalani/nordbuddy' }
```

* `vim-plug`

``` vim
Plug 'maaslalani/nordbuddy'
```

#### Setup

Configure and enable the colorscheme in `init.lua` with:

``` lua
require('nordbuddy').colorscheme({
    underline_option = 'none',
    italic = true,
    italic_comments = false,
    minimal_mode = false
})
```

Or do this with global variables:

* In `init.lua`:

``` lua
vim.g.nord_underline_option = 'none'
vim.g.nord_italic = true
vim.g.nord_italic_comments = false
vim.g.nord_minimal_mode = false
vim.cmd('colorscheme nordbuddy')
```

* In `init.vim`:

``` vim
let g:nord_underline_option = 'none'
let g:nord_italic = v:true
let g:nord_italic_comments = v:false
let g:nord_minimal_mode = v:false
colorscheme nordbuddy
```
