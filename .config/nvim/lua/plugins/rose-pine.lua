return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = true,
	priority = 0,
	config = function()
		require("rose-pine").setup({
			groups = {
				panel = "#292f40",
			},
			styles = {
				italic = false,
			},
			highlight_groups = {
				["String"] = { fg = "A0A8C3" }
			}
		})
		vim.cmd([[colorscheme rose-pine]])
	end,
}
