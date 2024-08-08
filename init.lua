vim.cmd("autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("autocmd TabNew * NvimTreeToggle")
vim.g.mapleader = " "

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

