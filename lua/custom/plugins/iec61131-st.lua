vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    parser_config = require 'nvim-treesitter.parsers'
    parser_config.structured_text = {
      install_info = {
        path = 'c:/src/tree-sitter-structured-text',
        -- url = "https://github.com/tanj/tree-sitter-structured-text.git",
        files = { 'src/parser.c' },
        branch = 'ts-upgrade',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
      },
      filetype = 'st',
    }
    vim.treesitter.language.register('structured_text', { 'st' })
  end,
})
local M = {}
return M
