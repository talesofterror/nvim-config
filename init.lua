vim.cmd("autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("autocmd TabNew * NvimTreeToggle")

vim.g.mapleader = " "
vim.cmd([[
	set termguicolors
	hi Cursor guifg=red guibg=red
	hi Cursor2 guifg=white guibg=red
	set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
				]])

vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
--vim.notify(vim.fn.stdpath("data"), vim.log.levels.INFO)
-- ^ prints ./local/share/nvim
--vim.notify(vim.fn.stdpath("config"), vim.log.levels.INFO)
-- & prints .config/nvim

require("mike.core")
require("mike.lazy")
require'nvim-tree'.setup()
require('lualine').setup()
require("luasnip.loaders.from_vscode").lazy_load()

{
'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                          , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' }
}
