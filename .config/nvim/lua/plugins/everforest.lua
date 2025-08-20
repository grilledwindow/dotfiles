return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1001,
	config = function()
		local everforest = require("everforest")
		everforest.setup({
			background = "medium",
			transparent_background_level = 0,
			colours_override = function (palette)
				palette.bg0 = "#292F40"
                palette.bg2 = "#323743"
                palette.bg1 = "#323743"
			end,
			on_highlights = function(hl, _)
				hl["@string.special.symbol.ruby"] = { link = "@field" }
			end,
		})
		everforest.load()
		-- vim.cmd([[colorscheme everforest]])
	end
}
