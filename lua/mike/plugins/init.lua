return {
	{ "christoomey/vim-tmux-navigator", },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}, },
	{ 'altermo/ultimate-autopair.nvim',
<<<<<<< HEAD
		event = { 'InsertEnter', 'CmdlineEnter' },
		branch = 'v0.6', -- Recommended stable branch
		opts = {},
=======
    event = { 'InsertEnter', 'CmdlineEnter' },
    -- branch = 'v0.6', -- Recommended stable branch
    opts = {},
>>>>>>> d3b3606 (config problems)
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability
		config = function()
			require("nvim-surround").setup({})
		end
	}


}

