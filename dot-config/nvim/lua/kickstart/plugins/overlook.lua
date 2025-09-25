return {
  'WilliamHsieh/overlook.nvim',
  opts = {},
  keys = {
    {
      '<leader>ld',
      function()
        require('overlook.api').peek_definition()
      end,
      desc = 'Overlook: Peek definition',
    },
    {
      '<leader>lc',
      function()
        require('overlook.api').close_all()
      end,
      desc = 'Overlook: Close all popup',
    },
    {
      '<leader>lr',
      function()
        require('overlook.api').restore_popup()
      end,
      desc = 'Overlook: Restore last popup',
    },
  },
}
