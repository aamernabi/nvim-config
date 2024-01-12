return {
  'nvimtools/none-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  lazy = true,
  config = function()
    local vim_api = vim.api
    local lsp = vim.lsp
    local keymap = vim.keymap
    local null_ls = require('null-ls')
    local null_ls_utils = require('null-ls.utils')

    keymap.set('n', '<leader>gf', lsp.buf.format, {})

    local augroup = vim_api.nvim_create_augroup('LspFormatting', {})
    local on_attach = function(current_client, bufnr)
      if current_client.supports_method('textDocument/formatting') then
        vim_api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim_api.nvim_create_autocmd('BufWritePre', {
          group = augroup,
          buffer = bufnr,
          callback = function()
            lsp.buf.format({
              filter = function(client)
                return client.name == 'null-ls'
              end,
              bufnr = bufnr,
            })
          end,
        })
      end
    end

    null_ls.setup({
      root_dir = null_ls_utils.root_pattern('.null-ls-root', 'Makefile', '.git', 'package.json'),
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.ktlint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.diagnostics.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ '.eslintrc.js', '.eslintrc.cjs' })
          end,
        }),
        null_ls.builtins.diagnostics.ktlint,
      },
      on_attach = on_attach,
    })
  end,
}
