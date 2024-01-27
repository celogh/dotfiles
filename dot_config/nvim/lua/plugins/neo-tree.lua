return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal left<CR>", { desc = "Neotree filesystem" })
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", { desc = "Neotree buffers" })
	end,
}
