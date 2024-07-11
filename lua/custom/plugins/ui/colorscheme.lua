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
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        tranparent_background = true,
      }
    end,
    init = function()
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        terminal_colors = true,
        borderless_telescope = false,
      }
    end,
    init = function()
      -- vim.cmd.colorscheme 'cyberdream'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'diegoulloao/neofusion.nvim',
    lazy = false,
    priotity = 1000,
    config = function()
      require('neofusion').setup {
        transparent_background = true,
      }
    end,
    init = function()
      -- vim.cmd.colorscheme 'neofusion'
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
