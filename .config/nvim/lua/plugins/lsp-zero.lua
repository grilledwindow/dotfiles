return {
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/nvim-cmp"},
	{"L3MON4D3/LuaSnip"},
	{
		"VonHeikemen/lsp-zero.nvim",
		config = function()
			local lsp = require("lsp-zero")
			lsp.extend_lspconfig()

			lsp.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp.default_keymaps({buffer = bufnr})
                vim.api.nvim_create_autocmd("CursorHold", {
                    buffer = bufnr,
                    callback = function()
                        local opts = {
                            focusable = false,
                            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                            border = 'rounded',
                            source = 'always',
                            prefix = ' ',
                            scope = 'cursor',
                        }
                        vim.diagnostic.open_float(nil, opts)
                    end
                })
			end)

			require("mason").setup({})
			require("mason-lspconfig").setup({
				--ensure_installed = { "rust_analyzer", "pyright", "tailwindcss", "svelte", "dockerls", "cssls", "tsserver" },
				require("lspconfig").tsserver.setup({ 
					filetypes = { "typescript", "javascript", "svelte" }
				}),
				require("lspconfig").rust_analyzer.setup({}),
				require("lspconfig").pyright.setup({}),
				require("lspconfig").tailwindcss.setup({}),
				require("lspconfig").svelte.setup({}),
				require("lspconfig").dockerls.setup({}),
				require("lspconfig").cssls.setup({}),
				require("lspconfig").html.setup({}),
			})

            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    {name = 'nvim_lsp'},
                },
                mapping = {
                    ['<C-Enter>'] = cmp.mapping.confirm({select = false}),
                    ['<CR>'] = cmp.mapping.confirm({select = false}),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
                    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
                    ['<C-k>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_prev_item({behavior = 'insert'})
                        else
                            cmp.complete()
                        end
                    end),
                    ['<C-j>'] = cmp.mapping(function()
                        if cmp.visible() then
                            cmp.select_next_item({behavior = 'insert'})
                        else
                            cmp.complete()
                        end
                    end),
                },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
            })

            local lspconfig = require("lspconfig")
            local configs = require("lspconfig/configs")
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = true

            lspconfig.emmet_ls.setup({
                -- on_attach = on_attach,
                capabilities = capabilities,
                filetypes = {
                    "css",
                    "eruby",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "less",
                    "sass",
                    "typescript",
                    "scss",
                    "svelte",
                    "pug",
                    "typescriptreact",
                    "vue",
                },
                init_options = {
                    html = {
                        options = {
                            -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                            ["bem.enabled"] = true,
                        },
                    },
                },
            })
		end
	},
}
