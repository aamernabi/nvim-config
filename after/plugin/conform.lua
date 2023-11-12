local setup, conform = pcall(require, "conform")

if not setup then
	return
end

local format_options = {
	-- These options will be passed to conform.format()
	async = false,
	timeout_ms = 500,
	lsp_fallback = true,
}

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		graphql = { "prettier" },
		markdown = { "prettier" },
		kotlin = { "ktlint" },
	},
	format_on_save = format_options,
})

vim.keymap.set({ "n", "v" }, "<leader>ii", function()
	conform.format(format_options)
end)
