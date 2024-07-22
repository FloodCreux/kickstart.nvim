-- local add = require('mini.deps').add
--
-- add {
--   source = 'OXY2DEV/markview.nvim',
--   depends = {
--     'nvim-treesitter/nvim-treesitter',
--     'nvim-tree/nvim-web-devicons',
--   },
-- }
--
-- require('markview').setup()

return {
  'OXY2DEV/markview.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    require('markview').setup()
  end,
}
