return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	priority = 50, --must be after mason (51)
	config = function () 
		local masonlspconfig = require("mason-lspconfig")
		masonlspconfig.setup()
	end
}	
