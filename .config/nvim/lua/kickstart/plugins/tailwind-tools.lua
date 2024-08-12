return {
  'luckasRanarison/tailwind-tools.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  -- opts = {}, -- your configuration
  config = function()
    require('tailwind-tools').setup {
      document_color = {
        enabled = true, -- can be toggled by commands
        kind = 'inline', -- "inline" | "foreground" | "background"
        inline_symbol = '∎', -- only used in inline mode
        debounce = 200, -- in milliseconds, only applied in insert mode
      },
      conceal = {
        enabled = false, -- can be toggled by commands
        min_length = nil, -- only conceal classes exceeding the provided length
        symbol = '∎', -- only a single character is allowed
        highlight = { -- extmark highlight options, see :h 'highlight'
          fg = '#38BDF8',
        },
      },
      custom_filetypes = {}, -- see the extension section to learn how it works
    }

    vim.keymap.set('n', '<leader>Tf', ':TailwindSort<CR>', { noremap = true, silent = true, desc = '[f]ormat all TailwindClasses' })
    vim.keymap.set('n', '<leader>Th', ':TailwindConcealToggle<CR>', { noremap = true, silent = true, desc = 'Toggle conceal ([h]ide)' })
    vim.keymap.set('n', '<leader>Tc', ':TailwindColorToggle<CR>', { noremap = true, silent = true, desc = 'Toggle [c]olors' })
  end,
}
