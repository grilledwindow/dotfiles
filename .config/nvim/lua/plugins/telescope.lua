return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 
            "nvim-telescope/telescope-live-grep-args.nvim" ,
            -- This will not install any breaking changes.
            -- For major updates, this must be adjusted manually.
            version = "^1.0.0",
        },
    },
    opts = {
	    defaults = {
		    file_ignore_patterns = {
			    "node_modules",
                "target"
		    },
            preview = {
                treesitter = {
                    enable = false,
                }
            }
	    }
    },
    keys = {
	    { "<leader>/", false},
	    -- change a keymap
	    { "<leader>ft", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
	    -- add a keymap to browse plugin files
	    {
	      "<leader>fp",
	      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
	      desc = "Find Plugin File",
	    },
        {
            "<leader>/",
            function() require('telescope').extensions.live_grep_args.live_grep_args() end,
            desc = "Live grep",
        },
	    {
	      "<leader>fs",
	      function() require("telescope.builtin").grep_string() end,
	      desc = "Find in all files",
	    },
	    {
	      "<leader>gg",
	      function() require("telescope.builtin").live_grep() end,
	      desc = "Find in all files (live)",
	    },
	    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
	    { "<C-h>", "which_key" },
    }
}
