return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = {
				"gopls",
        "ts_ls",
        "eslint",
        "lua_ls",
        "pyright",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        filetypes = {"python"},
      })
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<C-m>", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<C-y>", vim.lsp.buf.code_action, {})
		end,
	},
}
