return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    'mcauley-penney/techbase.nvim',
    dependencies = {
      'ribru17/bamboo.nvim',
      'diegoulloao/neofusion.nvim',
      'sainnhe/sonokai',
      'sainnhe/everforest',
      'sainnhe/gruvbox-material',
      'rebelot/kanagawa.nvim',
      'scottmckendry/cyberdream.nvim',
    },

    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    config = function()
      -- require('bamboo').setup {}
      -- require('bamboo').load()
      vim.cmd.colorscheme 'techbase'
      priority = 1000

      -- require('tokyonight').setup {
      --   style = 'night',
      --   transparent = false,
      --   terminal_colors = true,
      --   styles = {
      --     -- Style to be applied to different syntax groups
      --     -- Value is any valid attr-list value for `:help nvim_set_hl`
      --     comments = { italic = true },
      --     keywords = { italic = true },
      --     functions = {},
      --     variables = {},
      --     -- Background styles. Can be "dark", "transparent" or "normal"
      --     sidebars = 'normal', -- style for sidebars, see below
      --     floats = 'normal', -- style for floating windows
      --   },
      --   day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      --   dim_inactive = false, -- dims inactive windows
      --   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      --   cache = true, -- When set to true, the theme will be cached for better performance
      --
      --   ---@type table<string, boolean|{enabled:boolean}>
      --   plugins = {
      --     -- enable all plugins when not using lazy.nvim
      --     -- set to false to manually enable/disable plugins
      --     all = package.loaded.lazy == nil,
      --     -- uses your plugin manager to automatically enable needed plugins
      --     -- currently only lazy.nvim is supported
      --     auto = true,
      --     -- add any plugins here that you want to enable
      --     -- for all possible plugins, see:
      --     --   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
      --     -- telescope = true,
      --   },
      -- }
      --
      -- vim.cmd.colorscheme 'bamboo'
    end,
  },
}
