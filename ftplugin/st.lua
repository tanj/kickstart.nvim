-- vim.cmd 'setlocal tabstop=4 shiftwidth=4 noexpandtab'
-- vim.cmd 'setlocal comments=:///,://,s1:(*,mb:*,ex:*)'
-- -- vim.cmd 'setlocal commentstring="// %s"'
-- vim.bo.commentstring = '// %s'
-- local ft = require 'Comment.ft'
-- ft.set('st', { '//%s', '(*%s*)' })
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.expandtab = false

-- 'b:' requires a blank space after '///' and '//' so gw preserves the space
vim.opt_local.comments = {
  'b:///',
  'b://',
  's1:(*,mb:*,ex:*)',
}
vim.opt_local.formatoptions:append 'q'

vim.bo.commentstring = '// %s'

local ft = require 'Comment.ft'
ft.set('st', { '//%s', '(*%s*)' })
