return {
	"williamboman/mason.nvim",
	config = function () 
		local mason = require("mason")
		mason.setup()
	end
} -- must install lua and luarocks for functionality
