
return {
    "hrsh7th/nvim-cmp", -- nvim-cmp ya lo tienes
    dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-cmdline',
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets", -- Añadimos friendly-snippets
    },
    config = function()
      -- Aquí sigue la configuración de nvim-cmp como la que mencioné antes
		local cmp = require('cmp')
		local mapping = cmp.mapping
		cmp.setup({
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			mapping = mapping.preset.insert({
				["<Tab>"] = mapping.select_next_item(),
				["<S-Tab>"] = mapping.select_prev_item(),
				["<CR>"] = mapping.confirm({ select = true }),
			}),
			sources = {
			  { name = 'luasnip', priority = 1000},
			  { name = 'nvim_lsp'},
			  { name = 'buffer'},
			  { name = 'path'},
			  --{ name = 'cmdline'},
			  --{ name = 'lspconfig'},
			  --{ name = 'friendly_snippets'},
			},
		})
    end,
}
