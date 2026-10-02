return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", 
  config = function()
    require("nvim-treesitter").setup({
      -- Avoid using 'all' if you swap distros frequently; specify what you actually use
      ensure_installed = { "lua", "vim", "vimdoc", "markdown", "python", "javascript" }, 
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
			indent = { enable = true },
    })
  end,
}

