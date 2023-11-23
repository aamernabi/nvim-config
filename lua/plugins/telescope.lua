return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  -- or                            , branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local builtin = require('telescope.builtin')
    local keymap = vim.keymap

    keymap.set('n', '<leader>ff', builtin.find_files, {})
    keymap.set('n', '<C-p>', builtin.git_files, {})
    keymap.set('n', '<C-b>', builtin.buffers, {})
    keymap.set('n', '<leader>fh', builtin.help_tags, {})
    keymap.set('n', '<leader>fg', builtin.live_grep, {})
    keymap.set('n', '<leader>fs', function()
      builtin.grep_string({ search = vim.fn.input('Grep > ') })
    end)
  end,
}
