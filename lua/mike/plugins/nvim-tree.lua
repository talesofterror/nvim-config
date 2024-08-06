return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		open_on_setup = true,
		open_on_setup = true,
		open_on_tab = true,
	},
	config = function () 
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		
		local keymap = vim.keymap
		keymap.set("n", "<leader>fe", "<cmd>NvimTreeToggle<CR>")
		keymap.set("n", "<leader>ff", "<cmd>NvimTreeFindFileToggle<CR>")
		keymap.set("n", "<leader>fc", "<cmd>NvimTreeCollapse<CR>")
		keymap.set("n", "<leader>fr", "<cmd>NvimTreeRefresh<CR>")
	end
}
