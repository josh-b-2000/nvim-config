-- TODO: Update settings later
vim.pack.add({
  {
    src = 'https://github.com/folke/noice.nvim',
  },
  -- noice dependencies
  {
    src = 'https://github.com/MunifTanjim/nui.nvim',
  },
  {
    src = 'https://github.com/rcarriga/nvim-notify',
  },
})

require('noice').setup({
  lsp = {
    -- override markdown rendering so that cmp and other plugins use Treesitter
    override = {
      ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
      ['vim.lsp.util.stylize_markdown'] = true,
      -- ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
    },
  },
})
