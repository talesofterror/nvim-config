vim.cmd("autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE")
--vim.cmd("autocmd TabNew * NvimTreeToggle")
vim.cmd("set wrap!")

vim.opt.cursorline = true

vim.o.winblend = 0

vim.g.mapleader = " "
vim.cmd([[
	set termguicolors
	autocmd vimenter * hi Cursor guifg=white guibg=#ff0000 ctermfg=red ctermbg=white
	autocmd vimenter * hi Cursor2 guifg=white guibg=red ctermfg=white ctermbg=red
	hi lCursor guifg=white guibg=red ctermfg=white ctermbg=red
	autocmd vimenter * hi CursorLine guifg=NONE guibg=#224466
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
require("telescope").setup({
  defaults = {
    layout_config = {
      horizontal = {
        preview_cutoff = 0,
      },
    },
  },
})

