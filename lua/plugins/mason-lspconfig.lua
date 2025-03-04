return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-lspconfig").setup({
			-- Asegura que estos servidores estén instalados
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"jdtls",          -- Java
				"clangd",         -- C, C++
				--"csharp_ls",      -- C#
				"pyright",        -- Python
				--"gopls",          -- Go
				"html",           -- HTML
				"cssls",          -- CSS
				--"tsserver",       -- JavaScript/TypeScript
			},
		})
	end,
}

