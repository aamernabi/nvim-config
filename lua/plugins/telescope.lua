return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  -- or                            , branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')
    local keymap = vim.keymap
    builtin.buffers({ sort_lastused = true, ignore_current_buffer = true })

    telescope.setup({
      defaults = {
        path_display = { 'truncate ' },
        mappings = {
          n = {
            ['<C-d>'] = actions.delete_buffer,
          },
          i = {
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-d>'] = actions.delete_buffer,
          },
        },
      },
    })

    keymap.set('n', '<leader>ff', builtin.find_files, {})
    keymap.set('n', '<C-p>', builtin.git_files, {})
    keymap.set('n', '<leader>fb', builtin.buffers, {})
    keymap.set('n', '<leader>fh', builtin.help_tags, {})
    keymap.set('n', '<leader>fg', builtin.live_grep, {})
    keymap.set('n', '<leader>fh', builtin.help_tags, {})
    keymap.set('n', '<leader>fs', function()
      builtin.grep_string({ search = vim.fn.input('Grep > ') })
    end)

    telescope.load_extension('fzf')
  end,
}
