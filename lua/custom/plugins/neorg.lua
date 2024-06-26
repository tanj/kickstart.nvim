local M = {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    -- put any other flags you wanted to pass to lazy here!
    config = function()
      require('neorg').setup {
        -- put any of your previous config here
      }
    end,
  },
}

-- return M
-- Turning it off since orgmode works pretty well and luarocks is causing
-- issues in windows. Leaving this here incase I want to look at it again.
return {}
