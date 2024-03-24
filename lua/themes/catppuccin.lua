return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      flavour = 'macchiato', -- Set default flavour to macchiato
      dim_inactive = { -- Darken inactive windows by 20%
        enabled = true,
        shade = 'dark',
        percentage = 0.2,
      },
      integrations = { -- Enable integrations for installed plugins
        cmp = true,
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          scope_color = 'pink',
          colored_indent_levels = false,
        },
        mason = true,
        mini = {
          enabled = true,
          indentscope_color = 'pink',
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { 'italic' },
            hints = { 'italic' },
            warnings = { 'italic' },
            information = { 'italic' },
          },
          underlines = {
            errors = { 'underline' },
            hints = { 'underline' },
            warnings = { 'underline' },
            information = { 'underline' },
          },
          inlay_hints = {
            background = true,
          },
        },
        treesitter = true,
        which_key = true,
      },
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
    end,
    init = function()
      -- Load colorscheme
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
