return {
	"neovim/nvim-lspconfig",
	config = function () 
		local lspconfig = require('lspconfig')
		local configs = require('lspconfig.configs')
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
  	capabilities = capabilities,
  	filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  	init_options = {
    	html = {
      	options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      	},
    	},	
   	}
	})

		lspconfig.cssls.setup({})
		--lspconfig.css_variables.setup({})
		lspconfig.cssmodules_ls.setup({})
		lspconfig.html.setup({})
		lspconfig.lua_ls.setup({})
		--lspconfig.prettier.setup({})
		-- lspconfig.prettierd.setup({})
		lspconfig.ts_ls.setup({})
		lspconfig.csharp_ls.setup({})
		-- lspconfig.csharpier.setup({})
		
		vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
	end
}
