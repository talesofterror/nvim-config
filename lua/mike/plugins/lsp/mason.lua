return {
	"williamboman/mason.nvim",
	priority = 51,
	config = function () 
		local mason = require("mason")
		mason.setup({
			ensure_installed = {"clang", "cpptools", "clang-format"},
			PATH = "prepend",
		})
	end
} 
