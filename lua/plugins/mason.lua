return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        'lua_ls',
        'kotlin_language_server',
        'jdtls',
        'cssls',
        'tsserver',
        'pyright',
        'jsonls',
        'dockerls',
        'docker_compose_language_service',
        'angularls',
      },
      automatic_installation = true,
    })

    require('mason-tool-installer').setup({
      ensure_installed = {
        'stylua',
        'prettier',
        'eslint_d',
        'black', -- python formatter
        'isort', -- python formatter
        'pylint',
        'ktlint',
      },
    })
  end,
}
