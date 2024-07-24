return {
  'windwp/nvim-ts-autotag',
  -- opts = {
  --   -- Defaults
  --   enable_close = true, -- Auto close tags
  --   enable_rename = true, -- Auto rename pairs of tags
  --   enable_close_on_slash = false, -- Auto close on trailing </
  -- },
  -- -- Also override individual filetype configs, these take priority.
  -- -- Empty by default, useful if one of the "opts" global settings
  -- -- doesn't work well in a specific filetype
  -- per_filetype = {
  --   ['html'] = {
  --     enable_close = false,
  --   },
  -- },
  config = function()
    -- I don't like this and it doen't work anyway
    -- require('nvim-treesitter.configs').setup {
    --   autotag = {
    --     enable = true,
    --     filetypes = { 'html', 'tmpl' },
    --   },
    -- }
    require('nvim-ts-autotag').setup {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
      },
      aliases = {
        ['tmpl'] = 'html',
      },
      per_filetype = {
        ['tmpl'] = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = true,
        },
      },
    }
  end,
}
