return {
	"nvim-treesitter/nvim-treesitter",
	config = function () 
	  local configs = require("nvim-treesitter.configs")

    configs.setup({
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
      ensure_installed = { 
				"c", "lua", "vim", "vimdoc", "query", 
				"elixir", "heex", "javascript", "html" 
			},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
} -- windows install required "choco install mingw" from admin powershell
