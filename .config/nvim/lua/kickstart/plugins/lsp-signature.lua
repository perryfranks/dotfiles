return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {
    hint_prefix = '·',
    hint_inline = function()
      return false
    end,
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)

    -- vim.api.nvim_create_autocmd('LspAttach', {
    --   callback = function(args)
    --     local bufnr = args.buf
    --     local client = vim.lsp.get_client_by_id(args.data.client_id)
    --     if vim.tbl_contains({ 'null-ls' }, client.name) then
    --       return
    --     end
    --     require('lsp_signature').on_attach({})
    --   end,
    -- })
  end,
}
