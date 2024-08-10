return {
	"hrsh7th/cmp-nvim-lsp",
	config = function () 
		local cmpnvimlsp = require("cmp_nvim_lsp")
		cmpnvimlsp.setup({
			source = {
				{ name = "nvim_lsp" }
			}
		})
		-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		-- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
		require('lspconfig').clangd.setup {
	  capabilities = capabilities,
  	-- insert other lspconfig configs
		}
	end
}
