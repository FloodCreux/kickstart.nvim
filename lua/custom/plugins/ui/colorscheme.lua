return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        style = 'night',
        tranparent = true,
        terminal_colors = true,
        styles = {
          sidebars = 'tranparent',
          floats = 'transparent',
        },
      }
    end,
    init = function()
      vim.cmd.colorscheme 'tokyonight'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     require('catppuccin').setup {
  --       tranparent_background = true,
  --     }
  --   end,
  --   init = function()
  --     vim.cmd.colorscheme 'catppuccin-macchiato'
  --
  --     -- You can configure highlights by doing something like:
  --     vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },
  -- {
  --   'dgox16/oldworld.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = true,
  --   init = function()
  --     vim.cmd.colorscheme 'oldworld'
  --   end,
  -- },
}
