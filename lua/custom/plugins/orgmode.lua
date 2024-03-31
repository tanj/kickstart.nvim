local M = {
  'nvim-orgmode/orgmode',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
  },
  event = 'VeryLazy',
  config = function()
    -- Load treesitter grammar for org
    require('orgmode').setup_ts_grammar()

    -- Setup orgmode
    require('orgmode').setup {
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
          template = '* TODO %? $^g',
          target = '~/Dropbox/org/gtd.org',
        },
        j = {
          description = 'Journal',
          template = '**** %<%H:%M>: %? :%^{Tag}:\n   %t',
          datetree = true,
          target = '~/Dropbox/org/journal.org',
        },
        p = {
          description = 'PowerCore',
          template = '**** %<%H:%M>: %? :%^{Tag}:\n   %t',
          datetree = true,
          target = '~/Dropbox/org/powercore.org',
        },
      },
    }
  end,
}
return M
