return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
  },
  config = function()
    local keymap = vim.keymap
    local lsp = vim.lsp
    local diagnostic = vim.diagnostic
    local lspconfig = require('lspconfig')
    local opts = { noremap = true, silent = true }

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = ' ', Warn = ' ', Hint = '󰠠 ', Info = ' ' }
    for type, icon in pairs(signs) do
      local hl = 'DiagnosticSign' .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
    end

    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      keymap.set('n', 'gd', lsp.buf.definition, opts)
      keymap.set('n', 'gi', lsp.buf.implementation, opts)
      keymap.set('n', 'gr', ':Telescope lsp_references<CR>', opts)
      keymap.set('n', 'K', lsp.buf.hover, opts)

      keymap.set('n', '<leader>D', ':Telescope diagnostics bufnr=0<CR>', opts)
      keymap.set('n', '<leader>d', diagnostic.open_float, opts)
      keymap.set('n', '<leader>rn', lsp.buf.rename, opts)
      keymap.set('n', '<leader>ca', lsp.buf.code_action, opts)
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- After setting up mason-lspconfig you may set up servers via lspconfig
    -- require("lspconfig").rust_analyzer.setup {}
    -- ...
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.stdpath('config') .. '/lua'] = true,
            },
          },
        },
      },
    })

    lspconfig.lua_ls.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.kotlin_language_server.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.jdtls.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.tsserver.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.pyright.setup({ on_attach = on_attach, capabilities = capabilities, filetypes = { 'python' } })
    lspconfig.jsonls.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.dockerls.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.docker_compose_language_service.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.cssls.setup({ on_attach = on_attach, capabilities = capabilities })
    lspconfig.rust_analyzer.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { 'rust' },
      root_dir = lspconfig.util.root_pattern('Cargo.toml'),
      settings = {
        ['rust-analyzer'] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    })
    lspconfig.angularls.setup({ on_attach = on_attach, capabilities = capabilities })
  end,
}
