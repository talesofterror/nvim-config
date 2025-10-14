return {
	{	
		"bluz71/vim-nightfly-colors",
		priority = 1000,
		enabled = true,
		name = "nightfly",
		config = function ()
			--vim.cmd.colorscheme "nightfly"
		end,
	},
	{
	  "eldritch-theme/eldritch.nvim",
		enabled = true,
		name = "eldritch",
  	lazy = false,
	  priority = 1000,
		terminal_colors = false,
		config = function ()
			require("eldritch").setup({
					-- palette = "default", -- This option is deprecated. Use `vim.cmd[[colorscheme eldritch-dark]]` instead.
					transparent = true, -- Enable this to disable setting the background color
					terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
					styles = {
						-- Style to be applied to different syntax groups
						-- Value is any valid attr-list value for `:help nvim_set_hl`
						comments = { italic = true },
						keywords = { italic = true },
						functions = {},
						variables = {},
						-- Background styles. Can be "dark", "transparent" or "normal"
						sidebars = "dark", -- style for sidebars, see below
						floats = "dark", -- style for floating windows
					},
					sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
					hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
					dim_inactive = false, -- dims inactive windows, transparent must be false for this to work
					lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

					--- You can override specific color groups to use other groups or a hex color
					--- function will be called with a ColorScheme table
					---@param colors ColorScheme
					on_colors = function(colors) end,

					--- You can override specific highlights to use other groups or a hex color
					--- function will be called with a Highlights and ColorScheme table
					---@param highlights Highlights
					---@param colors ColorScheme
					on_highlights = function(highlights, colors) end,
			})
		end
	},
	{
  "craftzdog/solarized-osaka.nvim",
	enabled = false,
	name = "solarized-osaka",
  lazy = false,
  priority = 1000,
	transparent = true,
  opts = {},
	},
	{
	"catppuccin/nvim",
	enabled = true,
	name = "catppuccin",
	priority = 1000,
	config = function ()
		require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
		})

		-- setup must be called before loading

	end
	},
	{
		{ "ellisonleao/gruvbox.nvim",
			enabled = true,
			priority = 1000,
			config = true,
			opts = {
			},
			config = function ()
				require("gruvbox").setup({
					terminal_colors = true, -- add neovim terminal colors
					undercurl = true,
					underline = true,
					bold = true,
					italic = {
						strings = true,
						emphasis = true,
						comments = true,
						operators = false,
						folds = true,
					},
					strikethrough = true,
					invert_selection = false,
					invert_signs = false,
					invert_tabline = false,
					inverse = true, -- invert background for search, diffs, statuslines and errors
					contrast = "", -- can be "hard", "soft" or empty string
					palette_overrides = {},
					overrides = {},
					dim_inactive = false,
					transparent_mode = true,
				})
			end
		}
	},
	{
   "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
		enabled = true,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
	},
	{ 
		"savq/melange-nvim",
	},
	{ 
		"bluz71/vim-moonfly-colors", 
		name = "moonfly", 
		lazy = false, 
		priority = 1000,
		enabled = true,
		config = function () 
			vim.g.moonflyCursorColor = true
			vim.g.moonflyItalics = false
			vim.g.moonflyNormalPmenu = true
			vim.g.moonflyNormalFloat = true
			vim.o.winborder = "single"
			vim.g.moonflyTransparent = true
		end
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		dependencies = "rktjmp/hotpot.nvim",
		-- Add in any other configuration; 
		--   event = foo, 
		--   config = bar
		--   end,
	},
}
