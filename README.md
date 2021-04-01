# Nordbuddy

A [nord](https://www.nordtheme.com/)-esque colorscheme using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

Nordbuddy supports highlighting for [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter), [Neovim LSP](https://neovim.io/doc/user/lsp.html), and [Telescope](https://github.com/nvim-telescope/telescope.nvim/).

![Color Preview](https://user-images.githubusercontent.com/42545625/112913430-935a6a80-90c7-11eb-867e-394b1790a14f.png)

### Install

You'll need (at least) Neovim 0.4.0 for `nordbuddy` to work. You'll also need [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim).

with `Vim-Plug`
``` vim
Plug 'tjdevries/colorbuddy.nvim'
Plug 'maaslalani/nordbuddy'
```

with `packer.nvim`
``` lua
use {'maaslalani/nordbuddy', 'tjdevries/colorbuddy.nvim'}
```

### Setup

Enable the colorscheme in `init.vim`

```vim
" Vimscript
colorscheme nordbuddy
```

or in `init.lua`

```lua
-- Lua
require('colorbuddy').colorscheme('nordbuddy')
```

#### Spell

You can use the option `g:nord_spell` to choose how to underline the spell errors.
Possible options are `underline`, `undercurl`. By default no line is used.

### Warning

This is a work in progress 🚧

#### Known issues

- using `telescope.nvim` and `nvim-treesitter` variable preview, `var` keyword has a wrong highlight.
