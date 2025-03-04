-- ~/.config/nvim/lua/plugins/individual/toggleterm.lua
return{
	{'akinsho/toggleterm.nvim', version = "*",
	config = function()
		require("toggleterm").setup{
			open_mapping = [[<A-3>]],  -- Abre el terminal con Ctrl+\.
			direction = 'float',
	}
	end,
	},

}

