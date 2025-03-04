-- lazy.nvim
return {
	"folke/noice.nvim",
	--event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
    },
	config = function()
		require("notify").setup({
			background_colour = "#000000",
		})
		require("noice").setup({
			routes = {
				{
					view = 'notify',
					filter = { event = 'msg_showmode' },
				},
			},
			views = {
				cmdline_popup = {
					position = {
						row = 5,
						col = "50%",
					},
					size = {
						width = 60,
						height = "auto",
					},
				},
				popupmenu = {
					relative = "editor",
					position = {
						row = 8,
						col = "50%",
					},
					size = {
						width = 60,
						height = 10,
					},
					border = {
						style = "rounded",
						padding = { 0, 1 },
					},
					win_options = {
						winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
					},
				},
				--cmdline_popup = {
				--	border = {
				--		style = "none",
				--		padding = { 2, 3 },
				--	},
				--	filter_options = {},
				--	win_options = {
				--		winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
				--	},
				--},
				--mini = {
				--	win_option = {
				--		winbled = 0,
				--		winhighlight = {
				--			Normal = "NoiceMiniNormal",
				--			FloatBorder = "NoiceMiniBorder",
				--			FloatTittle = "NoiceMiniTittle",
				--		},
				--	},
				--},
			},
			--presets = {
			--	bottom_search = false, -- use a classic bottom cmdline for search
			--	command_palette = true, -- position the cmdline and popupmenu together
			--	long_message_to_split = true, -- long messages will be sent to a split
			--	inc_rename = false, -- enables an input dialog for inc-rename.nvim
			--	lsp_doc_border = false, -- add a border to hover docs and signature help
			--},
		})
	end,
}

