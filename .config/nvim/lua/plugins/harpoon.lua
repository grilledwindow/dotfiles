return {
	"theprimeagen/harpoon",
	keys = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		return {
			{ "<leader>m", mark.add_file },
			{ "<leader>e", ui.toggle_quick_menu },
			{ "<leader>1", function() ui.nav_file(1) end },
			{ "<leader>2", function() ui.nav_file(2) end },
			{ "<leader>3", function() ui.nav_file(3) end },
			{ "<leader>4", function() ui.nav_file(4) end },
			{ "<leader>h", function() ui.nav_prev() end },
			{ "<leader>j", function() ui.nav_prev() end },
			{ "<leader>k", function() ui.nav_next() end },
			{ "<leader>l", function() ui.nav_next() end },
		}
	end
	--vim.keymap.set("n", "<leader>a", mark.add_file)
}

