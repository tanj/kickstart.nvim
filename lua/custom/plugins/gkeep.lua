-- Right now this plugin doesn't work because gpsoauth issue
-- https://github.com/simon-weber/gpsoauth/issues/59
local M = {
  'stevearc/gkeep.nvim',
  build = 'UpdateRemotePlugins',
  -- no opts passed to this plugin
  -- opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
-- return M
return {}
