return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon Add' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon Toggle Menu' })

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon Go To 1' })
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon Go To 2' })
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon Go To 3' })
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon Go To 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon Go To Prev' })
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon Go To Next' })
  end,
}
