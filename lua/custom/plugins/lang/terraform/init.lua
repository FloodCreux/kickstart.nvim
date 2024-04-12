return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      if type(opts.ensure_installed) == 'table' then
        vim.list_extend(opts.ensure_installed, {
          'terraform',
          'hcl',
        })
      end
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        terraformls = {},
      },
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {
        'ANGkeith/telescope-terraform-doc.nvim',
        config = function()
          require('telescope').load_extension 'terraform_doc'
        end,
      },
      {
        'cappyzawa/telescope-terraform.nvim',
        config = function()
          require('telescope').load_extension 'terraform'
        end,
      },
    },
  },
}
