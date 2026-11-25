local M = {
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
  config = function()
    local picker = require 'window-picker'
    picker.setup {
      hint = 'floating-big-letter',
      filter_rules = {
        include_current_win = false,
        autoselect_one = true,
        bo = {
          -- Leave filetype empty so Neo-tree IS included in the jump targets
          filetype = {},
          buftype = { 'terminal', 'quickfix' },
        },
      },
    }

    vim.keymap.set('n', '<C-w>w', function()
      local win_id = picker.pick_window()
      if win_id then
        vim.api.nvim_set_current_win(win_id)
      end
    end, { desc = 'Pick window visually' })
  end,
}
return M
