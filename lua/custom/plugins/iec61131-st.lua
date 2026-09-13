-- 1. Register filetypes globally FIRST so filetypes exist when opening files
vim.filetype.add {
  extension = {
    st = 'st',
    struct = 'struct',
    gvl = 'gvl',
    enum = 'enum',
    itf = 'itf',
    meth = 'meth',
  },
}

-- 2. Configure Treesitter parser on TSUpdate
vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    local parser_config = require 'nvim-treesitter.parsers'
    parser_config.structured_text = {
      install_info = {
        url = 'https://github.com/tanj/tree-sitter-structured-text.git',
        files = { 'src/parser.c' },
        branch = 'main',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
      },
      filetype = 'st',
    }
    vim.treesitter.language.register('structured_text', { 'st', 'struct', 'gvl', 'enum', 'itf', 'meth' })
  end,
})

-- This didn't seem to do much, maybe look into this in the future
-- go install github.com/joyautomation/nautilus/cmd/nautilus@latest
local M = {
  -- 'iec61131-lsp',
  -- dir = vim.fn.stdpath 'config', -- Tells Lazy this is a local plugin
  -- ft = { 'st', 'struct', 'gvl', 'enum', 'itf', 'meth' },
  -- config = function()
  --   vim.api.nvim_create_autocmd('FileType', {
  --     -- List all filetypes you registered above
  --     pattern = { 'st', 'struct', 'gvl', 'enum', 'itf', 'meth' },
  --     callback = function(ev)
  --       vim.lsp.start {
  --         name = 'nautilus',
  --         cmd = { 'nautilus', 'lsp' },
  --         root_dir = vim.fs.root(ev.buf, { 'nautilus.yaml', '.git', '*.fbslib', '*.fbsproj' }),
  --       }
  --     end,
  --   })
  -- end,
}

return M
