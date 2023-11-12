require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"kotlin_language_server",
		"jdtls",
		"tsserver",
		"pyright",
		"jsonls",
		"dockerls",
		"docker_compose_language_service",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"prettier",
		"eslint_d",
		"black", -- python formatter
		"isort", -- python formatter
		"pylint",
		"ktlint",
	},
})

local on_attach = function(_, _)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_reference, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

require("lspconfig").lua_ls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").kotlin_language_server.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").jdtls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").tsserver.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").pyright.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").jsonls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").dockerls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").docker_compose_language_service.setup({ on_attach = on_attach, capabilities = capabilities })
