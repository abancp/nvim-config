return{ 
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
        "tsserver",
        "eslint",
        "pylsp",
        "clangd"
			},
		},
	},
	{
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.tsserver.setup({ capabilities = capabilities })
		lspconfig.gopls.setup({ capabilities = capabilities })
	  lspconfig.pylsp.setup({ capabilities = capabilities })
	  lspconfig.clangd.setup({ capabilities = capabilities })

		vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<C-m>", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n", "v" }, "<C-y>", vim.lsp.buf.code_action, {})

		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),
		})
	end,
}
}
