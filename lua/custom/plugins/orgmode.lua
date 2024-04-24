local M = {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  event = 'VeryLazy',
  config = function()
    require('orgmode').setup {
      org_adapt_indentation = true,
      org_agenda_files = '~/Dropbox/org/*',
      org_default_notes_file = '~/Dropbox/org/refile.org',
      org_todo_keywords = { 'TODO(t)', 'WAITING(w)', 'NEXT(n)', '|', 'DONE(d)', 'CANCELLED(c)', 'DEFERRED(f)' },
      org_agenda_skip_scheduled_if_done = true,
      org_agenda_skip_deadline_if_done = true,
      org_priority_highest = 'A',
      org_priority_default = 'C',
      org_priority_lowest = 'D',
      org_hide_emphasis_markers = true,
      org_highlight_latex_and_related = 'entities',
      org_startup_indented = false,
      org_edit_src_content_indentation = 2,
      org_tags_column = -77,
      win_split_mode = 'vertical',
      notifications = {
        enabled = true,
        cron_enabled = true,
        repeater_reminder_time = { 30, 5, 1, 0 },
        deadline_warning_reminder_time = { 30, 0 },
        reminder_time = { 30, 5, 1, 0 },
        deadline_reminder = true,
        scheduled_reminder = true,
      },
      org_capture_templates = {
        t = {
          description = 'Task',
          template = '* TODO %? :%^{Tag}:',
          target = '~/Dropbox/org/gtd.org',
        },
        j = {
          description = 'Journal',
          template = '**** %<%H:%M>: %? :%^{Tag}:\n     %t',
          datetree = true,
          target = '~/Dropbox/org/journal.org',
        },
        p = {
          description = 'PowerCore',
          template = '**** %<%H:%M>: %? :%^{Tag}:\n     %t',
          datetree = true,
          target = '~/Dropbox/org/powercore.org',
        },
      },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'org',
      callback = function()
        vim.keymap.set('i', '<M-CR>', '<cmd>lua require("orgmode").action("org_mappings.meta_return")<CR>', {
          silent = true,
          buffer = true,
        })
      end,
    })
    -- Global jump to files mappings
    vim.keymap.set('n', '<leader>ojj', function()
      vim.cmd.edit '~/Dropbox/org/journal.org'
    end, { desc = 'Open [j]ournal.org' })
    vim.keymap.set('n', '<leader>ojp', function()
      vim.cmd.edit '~/Dropbox/org/powercore.org'
    end, { desc = 'Open [p]owercore.org' })
    vim.keymap.set('n', '<leader>ojb', function()
      vim.cmd.edit '~/Dropbox/org/birthday-greetings.org'
    end, { desc = 'Open [b]irthay-greetings.org' })
  end,
}
return M
