return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = "markdown",
	dependencies = { "nvim-treesitter/nvim-treesitter" },

	config = function()
		require("render-markdown").setup({})

		local md = require("render-markdown")
		local map = vim.keymap.set

		-- toggle preview
		map("n", "<leader>mp", md.toggle)

		-- enable rendering
		map("n", "<leader>me", md.enable, { desc = "markdown enable" })

		-- disable rendering
		map("n", "<leader>md", md.disable, { desc = "markdown disable" })
	end,
}
