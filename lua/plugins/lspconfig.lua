return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
	config = function()
		local lspconfig = require("lspconfig")

		-- Configuración para servidores LSP
		lspconfig.lua_ls.setup({})
		lspconfig.rust_analyzer.setup({})
		-- Configuración de servidores LSP para los lenguajes mencionados
		lspconfig.jdtls.setup({})         -- Java
		lspconfig.clangd.setup({})        -- C, C++
		--lspconfig.csharp_ls.setup({})     -- C#
		lspconfig.pyright.setup({})       -- Python
		--lspconfig.gopls.setup({})         -- Go
		lspconfig.html.setup({})          -- HTML
		lspconfig.cssls.setup({})         -- CSS
		--lspconfig.tsserver.setup({})      -- JavaScript/TypeScript

		-- Plantilla para agregar más lenguajes en el futuro:
		-- lspconfig.<server_name>.setup({
		--   -- Opcional: configuración específica para el servidor
		-- })
	end,
}

