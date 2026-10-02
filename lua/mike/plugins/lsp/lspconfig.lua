return {
	"neovim/nvim-lspconfig",
	config = function () 
		local lspconfig = require('lspconfig')
		-- local lspconfig = vim.lsp.config()
		-- local configs = require('lspconfig.configs')
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
		lspconfig.css_variables.setup({})
		lspconfig.cssmodules_ls.setup({})
		lspconfig.html.setup({})
		--lspconfig.prettier.setup({})
		-- lspconfig.prettierd.setup({})
		-- lspconfig.ts_ls.setup({})
		lspconfig.tsserver.setup({})
		lspconfig.csharp_ls.setup({})
		-- lspconfig.csharpier.setup({})
		lspconfig.clangd.setup({})


		-- lspconfig.lua_ls.setup({})
		vim.lsp.config['lua_ls'] = {
		 -- Command and arguments to start the server.
		 cmd = { 'lua-language-server' },
		 -- Filetypes to automatically attach to.
		 filetypes = { 'lua' },
		 -- Sets the "workspace" to the directory where any of these files is found.
		 -- Files that share a root directory will reuse the LSP server connection.
		 -- Nested lists indicate equal priority, see |vim.lsp.Config|.
		 root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
		 -- Specific settings to send to the server. The schema is server-defined.
		 -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
		 settings = {
			 Lua = {
				 runtime = {
					 version = 'LuaJIT',
				 }
			 }
		 }
		}


		vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
	end
}
