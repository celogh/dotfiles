return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		--    config = function()
		--      require("mason-lspconfig").setup({
		--        ensure_installed = { "lua_ls", "yamlls", "pyright" }
		--      })
		--    end
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.yamlls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					vim.keymap.set("n", "<leader>gk", vim.lsp.buf.hover, { desc = "Hover definition" })
					vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto definition" })
					vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Display references" })
					vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, { desc = "Code action" })
				end,
			})
		end,
	},
}
