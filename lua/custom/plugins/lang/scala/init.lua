return {
  { import = 'custom.plugins.lang.scala.metals' },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { 'scala' })
    end,
  },
}
