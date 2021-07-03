# Nordbuddy

A [nord](https://www.nordtheme.com/)-esque colorscheme using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

Nordbuddy supports highlighting for [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
[Neovim LSP](https://neovim.io/doc/user/lsp.html), [Telescope](https://github.com/nvim-telescope/telescope.nvim/),
and [much more](https://github.com/maaslalani/nordbuddy/tree/main/lua/nordbuddy/colors).

![Color Preview](https://user-images.githubusercontent.com/42545625/112913430-935a6a80-90c7-11eb-867e-394b1790a14f.png)

## Install

You'll need (at least) Neovim 0.5.0 for `nordbuddy` to work. You'll also need [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim).

with `Vim-Plug`
``` vim
Plug 'tjdevries/colorbuddy.nvim'
Plug 'maaslalani/nordbuddy'
```

with `packer.nvim`
``` lua
use {'maaslalani/nordbuddy', requires = {'tjdevries/colorbuddy.nvim'}}
```

## Setup

Enable the colorscheme in Vimscript (`init.vim`):

```vim
colorscheme nordbuddy
```

or in Lua (`init.lua`):

```lua
require('colorbuddy').colorscheme('nordbuddy')
```

## Configuration

These are the available configuration options and their defaults:

> *These must be set before loading the colorscheme.*

```lua
-- Underline style used for spelling
-- Options: 'none', 'underline', 'undercurl'
vim.g.nord_underline_option = 'none'

-- Italics for certain keywords such as constructors, functions,
-- labels and namespaces
vim.g.nord_italic = true

-- Italic styled comments
vim.g.nord_italic_comments = false
```

Vimscript equivalent:

```vim
let g:nord_underline_option = 'none'
let g:nord_italic = v:true
let g:nord_italic_comments = v:false
```
