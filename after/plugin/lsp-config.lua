require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls' }
})

local on_attach = function (_, _)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_reference, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities 
}
