return {
	"williamboman/mason.nvim",
	priority = 51,
	config = function () 
		local mason = require("mason")
		mason.setup()
	end
} -- must install lua and luarocks for functionality
