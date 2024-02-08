return {
	{
	"nvim-neo-tree/neo-tree.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	keys = {
		{ "<leader>t", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
	},

	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,

			window = {
				width = 30,
			},
		})

		vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
	end,
}
}
