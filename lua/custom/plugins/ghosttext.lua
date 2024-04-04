M = {
  'subnut/nvim-ghost.nvim',
  name = 'nvim_ghost',
  -- config = function()
  --   require('ghost').setup {
  --     nvim_ghost_server_port = 4002,
  --   }
  -- end,
  config = function()
    vim.api.nvim_create_autocmd('User', {
      group = 'nvim_ghost_user_autocommands',
      pattern = '*',
      command = 'setfiletype markdown',
    })
  end,
  keys = {
    { '<leader>ug', ':GhostTextStart<cr>', desc = 'GhostTextStart', silent = true },
  },
}
return M
-- return {}
