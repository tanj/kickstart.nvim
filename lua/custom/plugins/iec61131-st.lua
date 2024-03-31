local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.structured_text = {
  install_info = {
    url = 'c:/src/tree-sitter-structured-text',
    -- url = "https://github.com/tanj/tree-sitter-structured-text.git",
    files = { 'src/parser.c' },
    branch = 'ts-upgrade',
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = 'st',
}
local M = {}
return M
