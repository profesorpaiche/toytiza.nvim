# Toytiza

This is a color scheme for NeoVim based on a [picture of chalks from
IKEA](https://www.ikea.com/ca/en/images/products/mala-chalk-mixed-colors__1085507_pe860123_s5.jpg).

<img src="https://www.ikea.com/ca/en/images/products/mala-chalk-mixed-colors__1085507_pe860123_s5.jpg" width="200" height="200">

## Install

If you are using [lazy.vim](https://github.com/folke/lazy.nvim) just
copy the following in your config:

```lua
{ -- Color scheme
  'profesorpaiche/toytiza.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('toytiza').setup({})
    vim.cmd.colorscheme('toytiza')
  end,
},
```

That's all. There are no additional options for the configuration for
the moment.

## Ports

The main colors are listed in `toytiza_scheme.md` so you can port it to any
other software you want. For example, this is the implementation of the colors
for the Wezterm and Alacritty terminal emulators.

- Wezterm:

```lua
config.colors = {
    foreground = '#EFEBFF',
    background = '#292732',
    cursor_bg = '#EFEBFF',
    cursor_fg = '#292732',
    cursor_border = '#EFEBFF',
    selection_fg = '#292732',
    ansi = {
        '#5B5965',
        '#FEA2C7',
        '#A1DAB1',
        '#FDF7AB',
        '#A6D8F9',
        '#D3C2EF',
        '#FFC98B',
        '#AEABBB',
    },
    brights = {
        '#777482',
        '#FFCCDF',
        '#C5E9CF',
        '#F5F2C9',
        '#CAE6FB',
        '#E5DAF8',
        '#FDDDBF',
        '#D0CCDE',
    },
}
```

- Alacritty:

```toml
[colors.bright]
black = "#777482"
red = "#FFCCDF"
green = "#C5E9CF"
yellow = "#F5F2C9"
blue = "#CAE6FB"
magenta = "#E5DAF8"
cyan = "#FDDDBF"
white = "#D0CCDE"

[colors.normal]
black = "#5B5965"
red = "#FEA2C7"
green = "#A1DAB1"
yellow = "#FDF7AB"
blue = "#A6D8F9"
magenta = "#D3C2EF"
cyan = "#FFC98B"
white = "#B1AEBE"

[colors.primary]
background = "#292732"
foreground = "#EFEBFF"
```
