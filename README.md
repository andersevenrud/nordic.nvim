# Nordbuddy
A [nord](https://www.nordtheme.com/)-esque colorscheme using [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

Nordbuddy supports highlighting for [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter), [Neovim LSP](https://neovim.io/doc/user/lsp.html), and [Telescope](https://github.com/nvim-telescope/telescope.nvim/).

![Color Preview](https://user-images.githubusercontent.com/42545625/112913430-935a6a80-90c7-11eb-867e-394b1790a14f.png)

### Install
You'll need (at least) Neovim 0.4.0 for `nordbuddy` to work. You'll also need [colorbuddy](https://github.com/tjdevries/colorbuddy.nvim).
```
Plug 'tjdevries/colorbuddy.nvim'
Plug 'maaslalani/nordbuddy'
```

### Setup
Then in your init.vim you can `use` nordbuddy.
```
lua require'nordbuddy'.use{}
```

### Warning
This is a work in progress 🚧
