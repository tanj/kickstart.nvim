vim.cmd 'setlocal tabstop=4 shiftwidth=4 noexpandtab'
vim.cmd 'setlocal comments=:///,://,s1:(*,mb:*,ex:*)'
-- vim.cmd 'setlocal commentstring="// %s"'
vim.bo.commentstring = '// %s'
local ft = require 'Comment.ft'
ft.set('st', { '//%s', '(*%s*)' })
