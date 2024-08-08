return {
	{	
		"bluz71/vim-nightfly-colors",
		priority = 1000, 
		enabled = true,
		config = function ()
			vim.cmd([[colorscheme nightfly]])
		end,
	},
	{
	  "eldritch-theme/eldritch.nvim",
		enabled = false,
  	lazy = false,
	  priority = 1000,
	},
}





