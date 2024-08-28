return {
	"williamboman/mason.nvim",
	priority = 51,
	config = function () 
		local mason = require("mason")
		mason.setup({
			PATH = "prepend",
		})
	end
} -- must install lua and luarocks for functionality
