local M = {
  -- 'jhofscheier/ltex-utils.nvim',
  'tanj/ltex-utils.nvim',
  branch = 'fix-telescope-preview-load-error',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzf-native.nvim', -- optional
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
return M
